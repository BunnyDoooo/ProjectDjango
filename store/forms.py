from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
# from useraccounts.models import UserProfile
from django.db import models


class CustomUserFrom(UserCreationForm):
    first_name = forms.CharField(widget=forms.TextInput(attrs={'class': 'col-md-6 col-8 mb-20', 'placeholder': 'First name'}))
    last_name = forms.CharField(widget=forms.TextInput(attrs={'class': 'col-md-6 col-8 mb-20 ', 'placeholder': 'Last name'}))
    username = forms.CharField(widget=forms.TextInput(attrs={'class': 'col-md-12', 'placeholder': 'Username'}))
    email = forms.CharField(widget=forms.TextInput(attrs={'class': 'col-md-12 ', 'placeholder': 'Email'}))
    password1 = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'col-md-6', 'placeholder': 'Password'}))
    password2 = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'col-md-6', 'placeholder': 'Confirm Password'}))

    class Meta:
        model = User
        fields = ['username', 'first_name', 'last_name', 'email', 'password1', 'password2']