import 'dart:io';
import 'package:dio/dio.dart';
import 'package:meops/src/services/base_urls/base_urls_api_service.dart';

class GetProfessionalListApiService extends BaseApiServices{
  
    Future professionalList(
      {
        required String category,
        required String subcategory,
        required String usertype,
        required String perpage,
      }
    ) async {
      dynamic responseJson;
      
      try{
         var dio = Dio();

         FormData formData = FormData.fromMap({
          "category": category,
          "sub_category": subcategory,
          "user_type": usertype,
          "per_page": perpage,
         });
        //  final prefs = await SharedPreferences.getInstance();
        //  String? authtoken = prefs.getString("auth_token");
         var response = await dio.post(getProfessionalListApiUrl,
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
         print("::::::::<get professional list data>::::::::status code::::::::::::::");
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