import 'dart:io';
import 'package:dio/dio.dart';
import 'package:meops/src/services/base_urls/base_urls_api_service.dart';

class GetUserDetailsApiService extends BaseApiServices {
  Future userDetails({required String id}) async {
    dynamic responseJson;
    try {
      var dio = Dio();
      // final prefs = await SharedPreferences.getInstance();
      // String? authtoken = prefs.getString("auth_token");
      var response = await dio.get(
         userDetailsApiUrl,
        options: Options(
            headers: {
              'Accept': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! <= 500;
            }),
            data: {
              "id" : id
            }
      );
      print("::::::::get user details........::::::::status code::::::::::::::");
      print(response.statusCode);
      print(response.data);
      responseJson = response;
    } on SocketException {
      print("no internet");
    }
    return responseJson;
  }
}
