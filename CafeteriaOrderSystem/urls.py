"""
URL configuration for CafeteriaOrderSystem project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include, reverse
from django.shortcuts import HttpResponse, render
from django.urls import path
from cafeteria import views
from cafeteria.views import register_choice, register_admin, register_user, register_merchant, login_view



def index(request):
    return render(request, 'index.html')


urlpatterns = [
    path('', views.index, name='index'),
    path('login/', views.login_view, name='login'),
    path('register/', register_choice, name='register_choice'),
    path('register/admin/', register_admin, name='register_admin'),
    path('register/user/', register_user, name='register_user'),
    path('register/merchant/', register_merchant, name='register_merchant'),
    path('cafeteria/', include('cafeteria.urls')),

]
