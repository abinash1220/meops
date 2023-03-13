import 'dart:io';
import 'package:dio/dio.dart';
import 'package:meops/src/services/base_urls/base_urls_api_service.dart';

class GetSubCategoryListApiService extends BaseApiServices {
  Future subCategoryList({required String id}) async {
    dynamic responseJson;
    try {
      var dio = Dio();
      // final prefs = await SharedPreferences.getInstance();
      // String? authtoken = prefs.getString("auth_token");
      var response = await dio.get(
        subCategorylistApiUrl,
        options: Options(
            headers: {
              'Accept': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! <= 500;
            }),
            data: {
              "category_id" : id
            }
      );
      print("::::::::<sub--category>::::::::status code::::::::::::::");
      print(response.statusCode);
      print(response.data);
      responseJson = response;
    } on SocketException {
      print("no internet");
    }
    return responseJson;
  }
}
