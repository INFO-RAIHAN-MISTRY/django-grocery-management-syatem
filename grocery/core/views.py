from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login as auth_login, logout as auth_logout
from django.contrib import messages
from product.models import (
    Category,
    Product,
)
from .models import (
    Cart,
    CartItem,
    Address,
    Order,
    OrderedProduct,
)
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required
import razorpay
from django.conf import settings
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.hashers import check_password
# Create your views here.

def home(request):
    categories_obj = Category.objects.all()
    latest_products = Product.objects.all().order_by('-id')[:6]
    top_buying_products = Product.objects.all().order_by('-product_sell_count')[:6]
    top_rated_product = Product.objects.all().order_by('?')[:6]
    featured_product = Product.objects.all().order_by('?')[:12]
    context = {
        'categories': categories_obj,
        'latest_products': latest_products,
        'top_buying_products':top_buying_products,
        'top_rated_product': top_rated_product,
        'featured_product':featured_product,
    }
    return render(request, 'grocery/index.html', context)

def shop(request):
    product_count = Product.objects.all().order_by('?').count()
    categories_obj = Category.objects.all()
    products_obj = Product.objects.all().order_by('?')
    paginator = Paginator(products_obj, 12)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    context = {
        'categories': categories_obj,
        'products': page_obj,
        'product_count':product_count,
    }
    return render(request, 'grocery/shop.html', context)

def registration(request):
    if request.method == "POST":
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        username = request.POST.get('username')
        email = request.POST.get('email')
        password1 = request.POST.get('password1')
        password2 = request.POST.get('password2')

        if User.objects.filter(username = username):
            messages.error(request, 'username field already exist. try with a different one.')
            return redirect('core:Registration')
        
        if User.objects.filter(email = email):
            messages.error(request, 'email field already exist. try with a different one.')
            return redirect('core:Registration')
        
        if password1 != password2:
            messages.error(request, 'password and confirm password field are not match.')
            return redirect('core:Registration')
        
        user_obj = User(first_name = first_name, last_name = last_name, username = username, email = email)
        user_obj.set_password(password1)
        user_obj.save()

        messages.success(request, 'Registration successfully done. go to login page for login.')
        return redirect('core:Login')
    
    return render(request, 'grocery/registration.html')

def login(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        username_check = User.objects.filter(username = username)
        if not username_check:
            messages.error(request, 'username field does not exist. try with the correct one.')
            return redirect('core:Login')
        
        user = authenticate(request, username = username, password = password)
        if not user:
            messages.error(request, 'Invalid login credentials')
            return redirect('core:Login')
        else:
            auth_login(request, user)
            messages.success(request, f'login done , welcome {username} to your Grocery partner')
            return redirect('core:Home')
            
    return render(request, 'grocery/login.html')

def logout(request):
    auth_logout(request)
    messages.success(request, 'Thanks for spending some quality times with us.')
    return redirect('core:Home')

def contact(request):
    return render(request, 'grocery/contact.html')

def category_products(request, slug):
    categories_obj = Category.objects.all()
    cat_obj = Category.objects.get(category_slug = slug)
    id = cat_obj.id
    product_obj = Product.objects.all().filter(category = id)
    paginator = Paginator(product_obj, 12)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    all_products = Product.objects.all()
    context = {
        'category':cat_obj,
        'categories': categories_obj,
        'products': page_obj,
        'all_products':all_products,
    }
    return render(request, 'grocery/categoryview.html', context)

def product_view(request, slug):
    product_obj = Product.objects.get(product_id = slug)
    relat_id = product_obj.category
    cat_obj = Category.objects.get(category_name = relat_id)
    id = cat_obj.id
    relate_item = Product.objects.all().filter(category = id)[:4]
    categories = Category.objects.all()
    context = {
        'relate_item':relate_item,
        'product':product_obj,
        'categories':categories,
    }
    return render(request, 'grocery/productview.html', context)

# cart section 

login_required(login_url='core:Login')
def cart(request):
    cart = Cart.objects.get(user=request.user)
    cart_items = cart.cartitem_set.all()
    cart_total = sum(item.product.product_price * item.quantity for item in cart_items)
    context = {
        'cart':cart,
        'cart_items': cart_items,
        'cart_total':cart_total,
        }
    return render(request, 'grocery/cart.html', context)

@login_required(login_url='core:Login')
def add_to_cart(request, product_id):
    product = Product.objects.get(pk=product_id)
    cart, created = Cart.objects.get_or_create(user=request.user)
    cart_item, item_created = CartItem.objects.get_or_create(cart=cart, product=product)
    if not item_created:
        cart_item.quantity += 1
        cart_item.save()
    return redirect('core:Cart')

@login_required(login_url='core:Login')
def update_cart(request):
    if request.method == 'POST':
        cart_item_ids = request.POST.getlist('cart_item')
        quantities = request.POST.getlist('quantity')
        for cart_item_id, quantity in zip(cart_item_ids, quantities):
            cart_item = CartItem.objects.get(pk=cart_item_id)
            cart_item.quantity = quantity
            cart_item.save()
        return redirect('core:Cart')

@login_required(login_url='core:Login')
def remove_from_cart(request, cart_item_id):
    cart_item = CartItem.objects.get(pk=cart_item_id)
    cart_item.delete()
    return redirect('core:Cart')

# Checkout section....


@login_required(login_url='core:Login')
def checkout(request):
    cart = Cart.objects.get(user=request.user)
    cart_items = cart.cartitem_set.all()
    cart_total = sum(item.product.product_price * item.quantity for item in cart_items)
    address_obj = Address.objects.filter(user = request.user).all()
    client = razorpay.Client(auth=(settings.RAZOR_KEY_ID, settings.RAZOR_KEY_SECRET))

    payment = client.order.create({
        'amount': cart_total * 100,
        'currency': 'INR',
        'payment_capture': 1,  # Auto-capture payments
    })
    order = Order(user = request.user, razorpay_order_id = payment['id'])
    order.save()

    context = {
        'cart_items':cart_items,
        'cart_total':cart_total,
        'address': address_obj,
        'payment': payment,

    }
    return render(request, 'grocery/checkout.html', context)


def payment_success(request, payment_id):
    print(payment_id)
    cart = Cart.objects.get(user=request.user)
    cart_items = cart.cartitem_set.all()
    cart_total = sum(item.product.product_price * item.quantity for item in cart_items)
    order = Order.objects.get(razorpay_order_id = payment_id)

    order.order_amount = cart_total
    order.payment_status = 'paid'
    order.save()
    for cart_item in cart_items:
        orderedProduct_obj = OrderedProduct.objects.create(
            user = request.user,
            order = order,
            product = cart_item.product,
            quantity = cart_item.quantity,
        )
        product_obj = Product.objects.get(id = cart_item.product.id)
        product_obj.product_sell_count += orderedProduct_obj.quantity
    cart_items.delete()
    context = {
        'order':order,
    }
    return render(request, 'grocery/payment-success.html', context)


# Accounts Section ......

@login_required(login_url='core:Login')
def addaddress(request):
    if request.method == "POST":
        user = request.user
        phone1 = request.POST.get('phone1')
        phone2 = request.POST.get('phone2')
        address = request.POST.get('address')
        country = request.POST.get('country')
        state = request.POST.get('state')
        city = request.POST.get('city')
        postal = request.POST.get('postal')
        address_type = request.POST.get('address_type')

        address_obj = Address(user = user, phone1 = phone1, phone2 = phone2, address = address, country = country, state = state, city = city, postal = postal, address_type = address_type)
        address_obj.save()
        messages.success(request, 'New Address added Successfully')
        return redirect('core:Add_address')

    return render(request, 'grocery/addaddress.html')

@login_required(login_url='core:Login')
def alladdresses(request):
    user = request.user
    address_obj = Address.objects.all().filter(user = user)

    context = {
        'address':address_obj,
    }
    return render(request, 'grocery/alladdresses.html', context)

@login_required(login_url='core:Login')
def address_delete(request, id):
    address_obj = Address.objects.get(id = id)
    address_obj.delete()

    messages.success(request, 'Address deleted Successfully')
    return redirect('core:All_address')

@login_required(login_url='core:Login')
def order(request):
    pass

@login_required(login_url='core:Login')
def allorders(request):
    orderproduct_obj = OrderedProduct.objects.filter(user = request.user).all().order_by('-order_date')
    context = {
        'orders':orderproduct_obj,
    }
    return render(request, 'grocery/allorders.html', context)

def change_pass(request):
    if request.method == "POST":
        email = request.POST['email']
        old_pass = request.POST['old_pass']
        new_pass = request.POST['new_pass']

        user_obj = User.objects.get(email = email)
        match_password = check_password(old_pass, user_obj.password)
        if not match_password:
            messages.error(request, 'Old password not match')
            return redirect('core:change-pass')
        else:
            user_obj.set_password(new_pass)
            user_obj.save()
            messages.success(request, 'password Change Successfully, relogin please')
            return redirect('core:Login')

    return render(request, 'grocery/change-pass.html')
