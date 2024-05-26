from django.contrib import messages
from django.shortcuts import render, redirect, get_object_or_404
from django.urls import reverse, NoReverseMatch

from cafeteria.forms import LoginForm
from django.contrib.auth import logout

from django.contrib.auth.hashers import check_password
from cafeteria.models import Admin, User, Merchant, Dish
from .forms import AdminRegistrationForm, UserRegistrationForm, MerchantRegistrationForm


def index(request):
    return render(request, 'index.html')


def login_view(request):
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
            user_id = form.cleaned_data['id']
            password = form.cleaned_data['password']
            role = form.cleaned_data['role']

            def redirect_if_exists(view_name):
                try:
                    url = reverse(view_name)
                    return redirect(url)
                except NoReverseMatch:
                    messages.error(request, f'{view_name} does not exist')
                    return None

            if role == 'admin':
                try:
                    admin = Admin.objects.get(id=user_id)
                    if check_password(password, admin.password):
                        request.session['user_id'] = admin.id
                        request.session['user_name'] = admin.name
                        request.session['user_type'] = 'admin'
                        print("Admin ID stored in session:", request.session['user_id'])  # 修改调试信息
                        return redirect_if_exists('admin_dashboard')
                    else:
                        messages.error(request, 'Invalid ID or password for Admin')
                except Admin.DoesNotExist:
                    messages.error(request, 'Invalid ID or password for Admin')

            elif role == 'user':
                try:
                    user = User.objects.get(id=user_id)
                    if check_password(password, user.password):
                        request.session['user_id'] = user.id
                        request.session['user_name'] = user.name
                        request.session['user_type'] = 'user'
                        return redirect_if_exists('user_dashboard')
                    else:
                        messages.error(request, 'Invalid ID or password for User')
                except User.DoesNotExist:
                    messages.error(request, 'Invalid ID or password for User')

            elif role == 'merchant':
                try:
                    merchant = Merchant.objects.get(id=user_id)
                    if check_password(password, merchant.password):
                        request.session['user_id'] = merchant.id
                        request.session['user_name'] = merchant.name
                        request.session['user_type'] = 'merchant'
                        return redirect_if_exists('merchant_dashboard')
                    else:
                        messages.error(request, 'Invalid ID or password for Merchant')
                except Merchant.DoesNotExist:
                    messages.error(request, 'Invalid ID or password for Merchant')
    else:
        form = LoginForm()

    return render(request, 'login.html', {'form': form})


def register_choice(request):
    return render(request, 'register_choice.html')


def register_admin(request):
    if request.method == 'POST':
        form = AdminRegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login')
    else:
        form = AdminRegistrationForm()
    return render(request, 'register_admin.html', {'form': form})


def register_user(request):
    if request.method == 'POST':
        form = UserRegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login')
    else:
        form = UserRegistrationForm()
    return render(request, 'register_user.html', {'form': form})


def register_merchant(request):
    if request.method == 'POST':
        form = MerchantRegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login')
    else:
        form = MerchantRegistrationForm()
    return render(request, 'register_merchant.html', {'form': form})


def logout_view(request):
    logout(request)
    return redirect('login')  # 你希望用户在登出后被重定向到的页面


def admin_dashboard(request):
    user_id = request.session.get('user_id')
    user_type = request.session.get('user_type')

    if not user_id or user_type != 'admin':
        messages.error(request, "No admin ID found in session.")
        return redirect('login')

    try:
        admin = Admin.objects.get(id=user_id)
        print("Admin found:", admin)  # 添加调试信息
    except Admin.DoesNotExist:
        messages.error(request, "Admin not found.")
        return redirect('login')

    return render(request, 'admin_dashboard.html', {'admin': admin})


def user_dashboard(request):
    user_id = request.session.get('user_id')
    user = User.objects.get(id=user_id)
    return render(request, 'user_dashboard.html', {'user': user})


def search(request):
    query = request.GET.get('query')
    # 这里根据需要实现搜索逻辑
    search_results = []  # 这里添加搜索结果
    context = {
        'query': query,
        'search_results': search_results
    }
    return render(request, 'search_results.html', context)


def merchant_dashboard(request):
    merchant_id = request.session.get('user_id')
    merchant = get_object_or_404(Merchant, id=merchant_id)
    dishes = Dish.objects.filter(merchant=merchant)

    categorized_dishes = {}
    for dish in dishes:
        category = dish.category
        if category not in categorized_dishes:
            categorized_dishes[category] = []
        categorized_dishes[category].append(dish)

    context = {
        'merchant': merchant,
        'categorized_dishes': categorized_dishes,
    }
    return render(request, 'merchant_dashboard.html', context)
