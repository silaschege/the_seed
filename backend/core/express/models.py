from django.db import models

# Create your models here.
Status_Choices =("Received",
                "Preparing",
                "Shipped"
                )
class ExpressModel(models.Model):
    express_id =models.BigAutoField(primary_key=True)
    # user_id int [not null, unique]
    status = models.CharField(
        max_length = 20,
        choices = Status_Choices,
        default = '1'
        )
    created_at  = models.DateField(auto_now_add=True)
class ExpressItemsModel(models.Model):
    express_item_id =models.BigAutoField(primary_key=True)
    # product_id int
    quantity  = models.IntegerField(max_length=5,default=1)

class WishlistModel(models.Model):
    wishlist_id  =models.BigAutoField(primary_key=True)
    # user_id int [not null, unique]
    created_at  = models.DateField(auto_now_add=True)

class WishListItemsModel(models.Model):
    wishlist_item_id =models.BigAutoField(primary_key=True)
    # product_id int
