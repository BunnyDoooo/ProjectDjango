from django.shortcuts import render, redirect
from decimal import Decimal
from django.contrib import messages
from django.http.response import JsonResponse
# from django.db.models import Sum
from django.contrib.auth.decorators import login_required


from store.models import Product, Cart


def addtocart(request):
    if request.method == 'POST':
        if request.user.is_authenticated:
            prod_id = int(request.POST.get('product_id'))
            product_check = Product.objects.get(id=prod_id)
            if product_check:
                if Cart.objects.filter(user=request.user.id, product_id=prod_id):
                    return JsonResponse({'status': "Product Already in Cart"})
                else:
                    prod_qty = int(request.POST.get('product_qty'))
                    if product_check.quantity >= prod_qty:
                        Cart.objects.create(user=request.user, product_id=prod_id, product_qty=prod_qty)
                        return JsonResponse({'status': "Product added successfully"})
                    else:
                        return JsonResponse({'status': "Only" + str(product_check.quantity) + "quantity available"})
            else:
                return JsonResponse({'status': "No such product found"})
        else:
            return JsonResponse({'status': "login to Continue"})

    return redirect('/')

@login_required(login_url='loginpage')

def viewcart(request):
    cart = Cart.objects.filter(user=request.user)
    total_price = 0
    for item in cart:
        total_price += item.product.selling_price * item.product_qty
        item.save()

    context = {'cart': cart, 'total_price': total_price}
    if request.META.get('HTTP_X_REQUESTED_WITH') == 'XMLHttpRequest':
        return JsonResponse(total_price, safe=False)
    return render(request, "store/cart.html", context)

def updatecart(request):
    if request.method == "POST":
        prod_id = int(request.POST.get('product_id'))
        if Cart.objects.filter(user=request.user, product_id=prod_id):
            prod_qty = int(request.POST.get('product_qty'))
            cart = Cart.objects.get(product_id=prod_id, user=request.user)
            cart.product_qty = prod_qty
            cart.save()

            item_subtotal = cart.product.selling_price * cart.product_qty
            cart.subtotal = item_subtotal
            cart.save()

            return JsonResponse({'status': "Update Successfully"})
    return redirect('/')

def deletecartitem (request):
    if request.method == 'POST':
        prod_id = int(request.POST.get('product_id'))
        if (Cart.objects.filter(user=request.user, product_id=prod_id)):
            cartitem = Cart.objects.get(product_id=prod_id, user=request.user)
            cartitem.delete()
        return JsonResponse({'status': "Delete Successfully"})
    return redirect('/')


def cartcount(request):
    cart_count = Cart.objects.filter(user=request.user).count()
    return JsonResponse({'count': cart_count})


