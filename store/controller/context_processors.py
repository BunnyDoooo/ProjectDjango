# from django.shortcuts import render, redirect
from store.models import *

def category(request):
    categories = Category.objects.all()
    return {'categories': categories}
