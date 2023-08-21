from django.db import models
from django.contrib.auth.models import User
from product.models import (
    Product,
)

# Create your models here.

class Address(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE) # user --> Address (one to many relationship)
    phone1 = models.CharField(max_length=15)
    phone2 = models.CharField(max_length=15)
    address = models.TextField()
    country = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    city = models.CharField(max_length=100)
    postal = models.CharField(max_length=10)
    address_type = models.CharField(max_length=100)

class Cart(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)

    def cart_item_count(self):
        return CartItem.objects.filter(cart__user = self.user).count()

    def cart_total(self):
        cart = Cart.objects.get(user = self.user)
        cart_items = cart.cartitem_set.all()
        return sum(item.product.product_price * item.quantity for item in cart_items)

class CartItem(models.Model):
    cart = models.ForeignKey(Cart, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1)

class Order(models.Model):
    user = models.ForeignKey(User, on_delete = models.CASCADE)
    products = models.ManyToManyField(Product, through = 'OrderedProduct')
    order_address = models.ForeignKey(Address, verbose_name="Order Address", on_delete=models.SET_NULL, null=True)
    order_amount = models.FloatField(default=0, verbose_name='Order Amount')
    payment_status = models.CharField(max_length = 20, choices = [('pending', 'Pending'), ('paid', 'Paid')])
    razorpay_order_id = models.CharField( max_length=250, null=True, blank=True)
    razorpay_payment_id = models.CharField( max_length=250, null=True, blank=True)
    razorpay_payment_signeture = models.CharField( max_length=250, null=True, blank=True)

    # def __str__(self):
    #     return self.user

class OrderedProduct(models.Model):
    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1)
    order_date = models.DateField(auto_now=True)

# Order (1 or many product) as it is OrderedProduct(1 or many orders)  ---> many to many relationship