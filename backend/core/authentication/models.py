import email
from django.db import models
from phonenumber_field.modelfields import PhoneNumberField
from django.contrib.auth.models import AbstractBaseUser,PermissionsMixin,BaseUserManager
import phonenumbers

# Create your models here.
class UserAccountManager(BaseUserManager):
    def create_user(self,email,phone_number,first_name,last_name,other_name,date_of_birth,password=None):
        if not email:
            raise ValueError("Users must have an email address")

        #  normalise the email adress
        email = self.normalize_email(email)
        # lower the email address letters
        email = email.lower()
        # remove spaces in the email address
        email = email.strip()

        user = self.model(
            phone_number    =   phone_number,
            email = email,
            first_name  = first_name,
            last_name   = last_name,
            other_name  = other_name,
            date_of_birth   =   date_of_birth,
        )

        user.set_password(password)
        user.save(using = self._db)
        return user
    
    def create_farmer(self,phone_number,email,first_name,last_name,other_name,date_of_birth,password=None):
        user = self.create_user(phone_number,email,first_name,last_name,other_name,date_of_birth,password)
        user.is_farmer = True
        user.save(using = self._db)

        return user

    def create_secondary_manufacturer(self,phone_number,email,first_name,last_name,other_name,date_of_birth,password=None):
        user = self.create_user(phone_number,email,first_name,last_name,other_name,date_of_birth,password)

        user.is_secondary_manufacturer = True
        user.save(using = self._db)

        return user

    def create_primary_manufacturer(self,phone_number,email,first_name,last_name,other_name,date_of_birth,password=None):
        user = self.create_user(phone_number,email,first_name,last_name,other_name,date_of_birth,password)

        user.is_secondary_manufacturer = True
        is_primary_manufacturer = True
        user.save(using = self._db)

        return user
    


    def create_superuser(self,phone_number,email,first_name,last_name,other_name,date_of_birth,password=None):
        user = self.create_user(phone_number,email,first_name,last_name,other_name,date_of_birth,password)

        user.is_superuser = True
        user.is_staff = True
        user.save(using = self._db)

        return user

class UserAccountModel(AbstractBaseUser,PermissionsMixin):
    phone_number =PhoneNumberField(unique=True)
    email  = models.EmailField(max_length=255,unique=True)
    first_name  = models.CharField(max_length=30)
    last_name   = models.CharField(max_length=30)
    other_name  = models.CharField(max_length=30)
    date_of_birth = models.DateField()
    # password    = models.CharField(max_length=4)

    is_farmer = models.BooleanField(default=False)
    is_secondary_manufacturer = models.BooleanField(default=False)
    is_primary_manufacturer = models.BooleanField(default=False) 

    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)

    created_at  = models.DateField(auto_now_add=True)

    objects = UserAccountManager()

    USERNAME_FIELD = 'phone_number' 
    REQUIRED_FIELDS = ['phone_number','email','first_name','last_name','other_name','date_of_birth']

    def __str__(self):
        return self.email

# this is the land that will be connected to the user account 1:* relationship
class LandRegisterModel(models.Model):
    land_id =models.BigAutoField(primary_key=True)
    country  = models.CharField(max_length=30)
    county  = models.CharField(max_length=30)
    sub_county  = models.CharField(max_length=30)
    village  = models.CharField(max_length=30)
    landSize  = models.FloatField(max_length=7)
    land_owner = models.ForeignKey(UserAccountModel)

    def __str__(self):
        return self.landSize


# a manufacturer will have multiple users either large or small
class ManufactureRegisterModel(models.Model):
    business_name = models.CharField(max_length=255)
    email = models.EmailField(max_length=255,unique=True)
    phone_number =PhoneNumberField(unique=True)
    country = models.CharField(max_length=255)
    county = models.CharField(max_length=255)
    town = models.CharField(max_length=255)
    street = models.CharField(max_length=255)
    building = models.CharField(max_length=255)
    major_landmark = models.CharField(max_length=255)
    company_krapin = models.CharField(max_length=255)
    # krapin_photo = models.ImageField(upload_to='krapin/')
    merchant_acount =models.ManyToManyField(UserAccountModel,on_delete=models.PROTECT)

    def __str__(self):
        return self.business_name