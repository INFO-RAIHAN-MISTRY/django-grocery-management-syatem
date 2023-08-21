from django.contrib import admin
from .models import (
    Cart,
    CartItem,
    Order,
    OrderedProduct,
    Address,
)
from product.models import (
    Product,
)

@admin.register(Cart)
class CartView(admin.ModelAdmin):
    list_display = [
        'user'
    ]

@admin.register(CartItem)
class CartItemView(admin.ModelAdmin):
    list_display = [
        'cart',
        'product',
        'quantity'
    ]

@admin.register(Order)
class OrderViewAdmin(admin.ModelAdmin):
    list_display = [
        'user',
        'products',
        'order_amount',
        'order_address',
        'payment_status',
    ]

    def products(self):
        return self.products.objects.all()
    
    # products.short_description = 'Related Data'  # Customize the column header

@admin.register(OrderedProduct)
class OrderedProductView(admin.ModelAdmin):
    list_display = [
        'user',
        'order',
        'product',
        'quantity',
    ]

@admin.register(Address)
class AddressAdminView(admin.ModelAdmin):
    list_display = [
        'user',
        'phone1',
        'phone2',
        'address',
        'country',
        'state',
        'city',
        'postal',
        'address_type',
    ]