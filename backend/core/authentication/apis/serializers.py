from dataclasses import fields
from pyexpat import model
from rest_framework import serializers
from django.contrib.auth import get_user_model
User =  get_user_model()
from ..models import LandRegisterModel,ManufactureRegisterModel


class UserAccountSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('phone_number','email','first_name','last_name','other_name','date_of_birth','is_farmer','is_secondary_manufacturer','is_primary_manufacturer')

class LandRegisterSerializer(serializers.ModelSerializer):
    land_owner = serializers.StringRelatedField()
    class Meta:
        model = LandRegisterModel
        fields = ('land_id','country','county','sub_county ','village', 'landSize ','land_owner ',)


class ManufactureRegisterModel(serializers.ModelSerializer):
    merchant_account =  serializers.StringRelatedField()
    class Meta:
        model   =   ManufactureRegisterModel
        fields = ('business_name','email','phone_number','country','county','town','street', 'building', 'major_landmark', 'company_krapin','merchant_acount',)