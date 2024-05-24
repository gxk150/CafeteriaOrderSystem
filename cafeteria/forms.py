# forms.py
from django import forms
from .models import Admin, User, Merchant


class LoginForm(forms.Form):
    ROLE_CHOICES = [
        ('admin', 'Admin'),
        ('user', 'User'),
        ('merchant', 'Merchant'),
    ]
    id = forms.CharField(label='ID', max_length=255)
    password = forms.CharField(widget=forms.PasswordInput, label='Password')
    role = forms.ChoiceField(choices=ROLE_CHOICES, label='Role')


class AdminRegistrationForm(forms.ModelForm):
    class Meta:
        model = Admin
        fields = ['name', 'password']


class UserRegistrationForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ['name', 'password', 'gender', 'age', 'nationality', 'ethnic_group', 'role']


class MerchantRegistrationForm(forms.ModelForm):
    class Meta:
        model = Merchant
        fields = ['name', 'password', 'address']
