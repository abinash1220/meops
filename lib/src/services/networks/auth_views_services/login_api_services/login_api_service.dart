import 'dart:io';
import 'package:dio/dio.dart';
import 'package:meops/src/models/login_api_model.dart';
import 'package:meops/src/services/base_urls/base_urls_api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginApiService extends BaseApiServices{
  
    Future loginApi(LoginApiModel loginApiModel) async {
      dynamic responseJson;
      
      try{
         var dio = Dio();

         FormData formData = FormData.fromMap({
          "userEmail": loginApiModel.userEmail,
        "password": loginApiModel.password,
        

         });
         final prefs = await SharedPreferences.getInstance();
         String? authtoken = prefs.getString("auth_token");
         var response = await dio.post(userLoginApiUrl,
         options: Options(
          headers: {
            'Accept': 'application/json',
          },
          followRedirects: false,
              validateStatus: (status) {
                return status! <= 500;
              }),
              
         data: formData,

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