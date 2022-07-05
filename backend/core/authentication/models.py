from django.db import models
from phonenumber_field.modelfields import PhoneNumberField

# Create your models here.
class UserModel(models.Model):
    user_id =models.BigAutoField(primary_key=True)
    first_name  = models.CharField(max_length=30)
    other_name  = models.CharField(max_length=30)
    last_name   = models.CharField(max_length=30)
    phoneNumber =PhoneNumberField()
    date_of_birth = models.DateField()
    password    = models.CharField(max_length=4)
    is_farmer = models.BooleanField(default=False)
    is_manufacturer = models.BooleanField(default=False)
    created_at  = models.DateField(auto_now_add=True)
    


class LandModel(models.Model):
    land_id =models.BigAutoField(primary_key=True)
    country  = models.CharField(max_length=30)
    county  = models.CharField(max_length=30)
    sub_county  = models.CharField(max_length=30)
    village  = models.CharField(max_length=30)
    landSize  = models.FloatField(max_length=7)