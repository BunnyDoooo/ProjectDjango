from django.urls import path
from . import views

from store.controller import authview, cart, wishlist, checkout, order


urlpatterns = (
    path('', views.home, name='home'),
    path('shop/', views.collections, name='collections'),
    path('shop/<str:slug>/', views.collectionsview, name="collectionsview"),
    path('shop/<str:cate_slug>/<str:prod_slug>/', views.productview, name="productview"),

    path('myprofile/', views.my_profile_view, name='my_profile'),


    path('product-list', views.productListAjax),
    path('search', views.search, name="search"),

    path('register/', authview.register, name="register"),
    path('login/', authview.loginpage, name="loginpage"),
    path('logout/', authview.logoutpage, name="logout"),

    path('add-to-cart', cart.addtocart, name="addtocart"),
    path('cart', cart.viewcart, name="cart"),
    path('update-cart', cart.updatecart, name='updatecart'),
    path('delete-cart-item', cart.deletecartitem, name="deletecartitem"),
    path('cart-count/', cart.cartcount, name='cart_count'),


    path('wishlist', wishlist.index, name="wishlist"),
    path('add-to-wishlist', wishlist.addtowishlist, name="addtowishlist"),
    path('delete-wishlist-item', wishlist.deletewishlistitem, name="deletewishlistitem"),

    path('checkout', checkout.index, name="checkout"),
    path('place-order', checkout.placeorder, name="placeorder"),

    path('my-orders', order.index, name="myorders"),
    path('view-order/<str:t_no>', order.vieworder, name="orderview"),
)
