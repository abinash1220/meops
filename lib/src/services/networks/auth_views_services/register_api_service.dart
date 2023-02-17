import 'dart:io';
import 'package:dio/dio.dart';
import 'package:meops/src/services/base_urls/base_urls_api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterApiService extends BaseApiServices{
  
    Future registerApi() async {
      dynamic responseJson;
      
      try{
         var dio = Dio();
         final prefs = await SharedPreferences.getInstance();
         String? authtoken = prefs.getString("auth_token");
         var response = await dio.post("",
         options: Options(
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $authtoken',
          },
          followRedirects: false,
              validateStatus: (status) {
                return status! <= 500;
              }),
         data: {}
         );
         print("::::::::<Register>::::::::status code::::::::::::::");
         print(response.statusCode);
         print(response.data);
         responseJson = response;
      }
      on SocketException {
        print("no internet");
    }
    return responseJson;
  }

}