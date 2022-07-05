from django.db import models

# Create your models here.
Status_Choices =(
                "Intransit"
                "Received",
                )
class InstallmentShippingTrackingModel(models.Model):
    installment_shipping_tracking_id =models.BigAutoField(primary_key=True)
    # installment_id
    # user_id 
    status = models.CharField(
        max_length = 20,
        choices = Status_Choices,
        default = '1'
        )

class ExpressShippingTrackingModel(models.Model):
    express_shipping_tracking_id =models.BigAutoField(primary_key=True)
    # express_id
    # user_id 
    status = models.CharField(
        max_length = 20,
        choices = Status_Choices,
        default = '1'
        )
