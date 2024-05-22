from django.shortcuts import render


def index(request):
    return render(request, 'index.html')


def login_view(request):
    # 这里编写登录视图的逻辑
    return render(request, 'login.html')


def register_view(request):
    # 这里编写注册视图的逻辑
    return render(request, 'register.html')
