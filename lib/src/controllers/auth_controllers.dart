import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/services/networks/auth_views_services/register_api_service.dart';

class AuthController extends GetxController{

  RegisterApiService registerapi = RegisterApiService();

  register () async {
     
     dio.Response<dynamic> response = await registerapi.registerApi();

     if(response.statusCode == 200){

     }else{
      Get.snackbar("Something went wrong", "",
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }

  }

}