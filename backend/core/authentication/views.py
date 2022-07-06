from codecs import latin_1_decode
from ctypes.wintypes import LANGID
import logging
import optparse
from traceback import FrameSummary
from xml.dom import registerDOMImplementation
from xmlrpc.client import FastMarshaller
from django.shortcuts import render
from django.contrib.auth import get_user_model
User =  get_user_model()
from apis.serializers import UserAccountSerializer,LandRegisterModel,ManufactureRegisterModel
from .models import LandRegisterModel,ManufactureRegisterModel
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import permissions,status

# Create your views here.
# register all users in the system
class UserAccountRegistrationView(APIView):
    permission_classes = (permissions.AllowAny, )


    def post(self,request):
        try:
            data= request.data

            phone_number = data['phone_number']
            email = data['email']
            email = email.lower()
            first_name = data['first_name']
            last_name = data['last_name']
            other_name = data['other_name']
            date_of_birth = data['date_of_birth']
            is_farmer = data['is_farmer']
            is_secondary_manufacturer =  data['is_secondary_manufacturer']
            is_primary_manufacturer = data['is_primary_manufacturer']

            password =  data["password"]
            re_password = data ["re_password"]

            if is_farmer == "True":
                is_farmer = True
            
            elif is_secondary_manufacturer == "True":
                is_secondary_manufacturer = True

            elif is_primary_manufacturer == "True":
                is_primary_manufacturer = True
                is_secondary_manufacturer = True
            
            else:
                is_farmer = False
                is_secondary_manufacturer = False
                is_primary_manufacturer = False
            
         
            if password == re_password:
                if len(password) >= 8:
                    if not User.objects.filter(email=email).exists():

                        if is_primary_manufacturer == True:
                            User.objects.create_primary_manufacturer(phone_number=phone_number,email=email,first_name=first_name,last_name=last_name,other_name=other_name,date_of_birth=date_of_birth,password=password)
                            return Response (
                                {'success':' Primary manufacturer  account created succesfully'},
                                status = status.HTTP_201_CREATED
                            )

      

                        elif is_secondary_manufacturer == True:
                            User.objects.create_secondary_manufacturer(phone_number=phone_number,email=email,first_name=first_name,last_name=last_name,other_name=other_name,date_of_birth=date_of_birth,password=password)
                            return Response (
                                {'success':' Secondary manufacturer  account created succesfully'},
                                status = status.HTTP_201_CREATED
                            )
                        
                        elif is_farmer == True:
                            User.objects.create_farmer(phone_number=phone_number,email=email,first_name=first_name,last_name=last_name,other_name=other_name,date_of_birth=date_of_birth,password=password)
                            return Response (
                                {'success':' Secondary manufacturer  account created succesfully'},
                                status = status.HTTP_201_CREATED
                            )
                        

                        else:
                            User.objects.create_user(email=email,first_name=first_name,last_name=last_name,other_name=other_name,phone_number=phone_number,password=password)

                            return Response (
                                {'success':'User  account created succesfully'},
                                status = status.HTTP_201_CREATED
                            )


                    else:
                        return Response (
                            {'Error':'Account already esists'},
                            status = status.HTTP_400_BAD_REQUEST
                    )
                

                else:
                    return Response (
                        {'Error':'Passwords is less than 8 characters'},
                        status = status.HTTP_400_BAD_REQUEST
                    )

            

            else:
                return Response (
                    {'Error':'Passwords do not match'},
                    status = status.HTTP_400_BAD_REQUEST
                )


        except:
            return Response (
                {'Error':'Something went wrong when registering an account'},
                status = status.HTTP_500_INTERNAL_SERVER_ERROR
            )
# land registeration 
# manufacturer registerion
# pin login 
# otp for both registration and login
# login into account 
# password reset 
# account change information

