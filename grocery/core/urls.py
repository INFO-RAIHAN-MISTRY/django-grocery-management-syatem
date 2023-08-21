from django.urls import path
from .views import (
    home,
    shop,
    registration,
    login,
    contact,
    category_products,
    product_view,
    logout,
    cart,
    add_to_cart,
    remove_from_cart,
    update_cart,
    checkout,
    addaddress,
    alladdresses,
    address_delete,
    allorders,
    payment_success,
    change_pass,
)

app_name='core'
urlpatterns = [
    path('', home, name='Home'),
    path('shop/', shop, name='Shop'),
    path('registration/', registration, name="Registration"),
    path('login/', login, name="Login"),
    path('logout/', logout, name="Logout"),
    path('contact', contact, name="Contact"),

    # Products Pages
    path('category/<slug>/', category_products, name="Category_Product"),
    path('product/<slug>/', product_view, name="Product"),

    # Cart Page 
    path('cart/', cart, name='Cart'),
    path('add-to-cart/<int:product_id>/', add_to_cart, name='add_to_cart'),
    path('remove-from-cart/<int:cart_item_id>/', remove_from_cart, name='remove_from_cart'),
    path('update-cart/', update_cart, name='update_cart'),
    
    # Check out pages
    path('checkout/', checkout, name="Checkout"),
    path('payment/success/<payment_id>/', payment_success, name='payment_success'),

    # account section...
    path('add/address/', addaddress, name="Add_address"),
    path('all/address/', alladdresses, name="All_address"),
    path('address/delete/<id>/', address_delete, name="Address_delete"),
    path('all/orders/', allorders, name="All_orders"),
    path('change/password', change_pass, name="change-pass"),
]

# slug, str, int is accepted as a django url parameter.
