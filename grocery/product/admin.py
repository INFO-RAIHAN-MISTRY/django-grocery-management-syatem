from django.contrib import admin
from .models import (
    Category,
    Product,
    Quantity,
    Size,
)
# Register your models here.

@admin.register(Category)
class CategoryAdminDisplay(admin.ModelAdmin):
    list_display = [
        'category_name',
        'category_slug',
        'category_image',
        'category_desc',
        'category_created_at',
    ]

@admin.register(Product)
class ProductAdminDisplay(admin.ModelAdmin):
    list_display = [
        'category',
        'product_id',
        'product_image', 
        'product_name', 
        'product_price',
        'product_sell_count',
        'product_short_desc', 
        'product_long_desc', 
        'product_created_at',
        'Quantity',
    ]

@admin.register(Quantity)
class QuantityAdminDisplay(admin.ModelAdmin):
    list_display = [
        'quantity_name',
        'quantity_desc',
        'quantity_created_at',
    ]

@admin.register(Size)
class SizeAdminDisplay(admin.ModelAdmin):
    list_display = [
        'size_name',
        'size_name_desc',
        'size_created_at',
    ]