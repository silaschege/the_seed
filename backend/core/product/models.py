from django.db import models

# Create your models here.
Status_Choices =(
                "Litres"
                "Milli Liters",
                "Kilograms",
                "Grams"
                )
class ProductsCategoryModel(models.Model):
  product_category_id =models.BigAutoField(primary_key=True)
  category_name    = models.CharField(max_length=30)


class ProductsItemModel(models.Model):
    product_item_id =models.BigAutoField(primary_key=True)
#   product_category_id
#   user_id
    product_name    = models.CharField(max_length=30)
    price  = models.IntegerField(max_length=5)
    product_size  = models.IntegerField(max_length=5,default=1)
    product_packaging_metrics =models.CharField(
        max_length = 20,
        choices = Status_Choices,
        default = '1'
        )
    created_at   = models.DateField(auto_now_add=True)