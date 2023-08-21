from django.db import models
from django.utils.text import slugify
import string
import random

# Create your models here.

# raihan mistry gafv fhjwg  ---> raihan-mistry-gafv-hdfndzs
# Creation of Category Model
class Category(models.Model):
    category_name = models.CharField(max_length=100, verbose_name='Category Name', unique=True)
    category_slug = models.SlugField(max_length=100, blank=True, verbose_name='Category Slug')
    category_image = models.ImageField(upload_to='Category_Images', verbose_name='Category Image', null=True, blank=True)
    category_desc = models.TextField(verbose_name='Category Description')
    category_created_at = models.DateField(auto_now=True)



    def save(self, *args, **kwargs):
        self.category_slug = slugify(self.category_name)
        super(Category,self).save(*args, **kwargs)

    def __str__(self):
        return self.category_name
    

# Product Quantity
class Quantity(models.Model):
    quantity_name = models.CharField(max_length=100, unique=True)
    quantity_desc = models.CharField(max_length=250, blank=True)
    quantity_created_at = models.DateField(auto_now=True)

    def __str__(self):
        return self.quantity_name
    
# Product Size
class Size(models.Model):
    size_name = models.CharField(max_length=100, unique=True)
    size_name_desc = models.CharField(max_length=250, blank=True)
    size_created_at = models.DateField(auto_now=True)

    def __str__(self):
        return self.size_name

# Creation of Product Model
class Product(models.Model):
    category = models.ForeignKey(Category, verbose_name="Category", on_delete=models.CASCADE)
    product_name = models.CharField(max_length=100, unique=True)
    product_short_desc = models.CharField(max_length=250)
    product_long_desc = models.TextField()
    product_image = models.ImageField(upload_to='Product_images', null=True, blank=True)
    product_price = models.FloatField(default=0)
    product_created_at = models.DateField(auto_now=True)
    Quantity = models.ForeignKey(Quantity, verbose_name=("Quantities"), on_delete=models.RESTRICT)
    Size = models.ForeignKey(Size, verbose_name='Product Size', on_delete=models.CASCADE)
    product_id = models.CharField(max_length=100, blank=True, verbose_name='Product id auto generated')
    product_sell_count = models.BigIntegerField(default=0)

    def save(self, *args, **kwargs):
        randomid = ''.join([random.choice(string.ascii_letters + string.digits) for n in range(10)])
        self.product_id = str(self.product_name+'_'+randomid)
        super(Product,self).save(*args, **kwargs)

    def __str__(self):
        return self.product_name

# cascade, protect, restrict, set_null, set

