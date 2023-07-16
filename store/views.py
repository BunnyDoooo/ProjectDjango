from django.shortcuts import render, redirect
from .models import *
from django.contrib import messages
from django.http.response import JsonResponse
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator


def home(request):
    products = Product.objects.filter(status=0)
    context = {'products': products}
    return render(request, "store/index.html", context)

def collections(request):
    category = Category.objects.filter(status=0)
    categories = Category.objects.filter(status=0)
    products = Product.objects.filter(status=0)
    paginator = Paginator(products, 10)  # Số lượng sản phẩm trên mỗi trang

    page_number = request.GET.get('page')  # Lấy số trang hiện tại từ tham số GET 'page'
    page_obj = paginator.get_page(page_number)  # Lấy đối tượng trang hiện tại

    context = {'category': category, 'products': page_obj, 'categories': categories}
    return render(request, "store/shop.html", context)


def collectionsview(request, slug):
    if Category.objects.filter(slug=slug, status=0):
        products = Product.objects.filter(category__slug=slug)
        category = Category.objects.filter(slug=slug).first()
        paginator = Paginator(products, 6)  # Số sản phẩm trên mỗi trang
        page_number = request.GET.get('page')
        page_obj = paginator.get_page(page_number)
        context = {'products': page_obj, 'category': category}
        return render(request, "store/products/index.html", context)
    else:
        messages.warning(request, "No Such category found")
        return redirect('collections')


def productview(request, cate_slug, prod_slug):
    if Category.objects.filter(slug=cate_slug, status=0):
        if Product.objects.filter(slug=prod_slug, status=0):
            products = Product.objects.filter(slug=prod_slug, status=0).first()
            context = {'products': products}
        else:
            messages.error(request, "No such product found ")
            return redirect('collectionsview', slug=cate_slug)
    else:
        messages.error(request, "No such category found ")
        return redirect('collectionsview', slug=cate_slug)
    return render(request, "store/products/view.html", context)

def productListAjax(request):
    products = Product.objects.filter(status=0).values_list('name', flat=True)
    productslist = list(products)

    return JsonResponse(productslist, safe=False)

def search(request):
    query = request.GET.get('Search')
    products = Product.objects.filter(name__icontains=query)
    category = Category.objects.filter(status=0)
    categories = Category.objects.filter(status=0)
    paginator = Paginator(products, 6)  # Số sản phẩm trên mỗi trang
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    context = {'products': page_obj, 'query': query, 'categories': categories, 'category': category}
    return render(request, 'store/search.html', context)


@login_required(login_url='loginpage')
def my_profile_view(request):
    user = request.user
    if request.method == 'POST':
        fname = request.POST.get('fname')
        lname = request.POST.get('lname')
        username = request.POST.get('username')
        email = request.POST.get('email')
        password = request.POST.get('password')
        password_confirmation = request.POST.get('password_confirmation')

        if password and password != password_confirmation:
            messages.error(request, 'Password and password confirmation do not match.')
        else:
            user.last_name = lname
            user.first_name = fname
            user.username = username
            user.email = email

            if password:
                user.set_password(password)
            user.save()
            messages.success(request, 'Profile updated successfully.')
    context = {'user': user}
    return render(request, 'store/profile/views.html', context)