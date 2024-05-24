from pyexpat.errors import messages

from django.shortcuts import render, redirect

from cafeteria.forms import LoginForm
from cafeteria.models import Admin, User, Merchant
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

            if role == 'admin':
                try:
                    admin = Admin.objects.get(id=user_id, password=password)
                    request.session['user_id'] = admin.id
                    request.session['user_type'] = 'admin'
                    return redirect('admin_dashboard')
                except Admin.DoesNotExist:
                    messages.error(request, 'Invalid ID or password for Admin')

            elif role == 'user':
                try:
                    user = User.objects.get(id=user_id, password=password)
                    request.session['user_id'] = user.id
                    request.session['user_type'] = 'user'
                    return redirect('user_dashboard')
                except User.DoesNotExist:
                    messages.error(request, 'Invalid ID or password for User')

            elif role == 'merchant':
                try:
                    merchant = Merchant.objects.get(id=user_id, password=password)
                    request.session['user_id'] = merchant.id
                    request.session['user_type'] = 'merchant'
                    return redirect('merchant_dashboard')
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
