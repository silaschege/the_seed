from django.db import models

# Create your models here.
class InstallmentPaymentLogModel(models.Model):
    installment_payment_log_id =models.BigAutoField(primary_key=True)
    # user_id
    # installment_id
    amount  = models.IntegerField(max_length=5,default=1)
    seed_percentage  = models.IntegerField(max_length=5,default=1)
    fertilizer_percentage  = models.IntegerField(max_length=5,default=1)
    herbicide  = models.IntegerField(max_length=5,default=1)
    payment_method  = models.IntegerField(max_length=5,default=1)
    time_paid  = models.DateField(auto_now_add=True)
 
class ExpressPaymentLogModel(models.Model):
    installment_payment_log_id =models.BigAutoField(primary_key=True)
    # user_id
    # express_id
    amount  = models.IntegerField(max_length=5,default=1)
    payment_method  = models.IntegerField(max_length=5,default=1)
    time_paid  = models.DateField(auto_now_add=True)
 