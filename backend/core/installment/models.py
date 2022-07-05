from django.db import models

# Create your models here.
Status_Choices =(
                "Paying"
                "Received",
                "Preparing",
                "Shipped"
                )
class InstallmentModel(models.Model):
    installment_id =models.BigAutoField(primary_key=True)
    # user_id int [not null, unique]
    status = models.CharField(
        max_length = 20,
        choices = Status_Choices,
        default = '1'
        )
    created_at  = models.DateField(auto_now_add=True)
class InstallmentItemsModel(models.Model):
    installment_item_id =models.BigAutoField(primary_key=True)
    # product_id int
    quantity  = models.IntegerField(max_length=5,default=1)
