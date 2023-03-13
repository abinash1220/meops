import 'dart:io';
import 'package:dio/dio.dart';
import 'package:meops/src/services/base_urls/base_urls_api_service.dart';
import 'package:http/http.dart' as http;

class HelpLineApiService extends BaseApiServices {
  Future helpLineApiService() async {
    dynamic responseJson;
    try {
      var dio = Dio();
      // final prefs = await SharedPreferences.getInstance();
      // String? authtoken = prefs.getString("auth_token");
      var response = await dio.get(
        helpLineApiUrl,
        options: Options(
            headers: {
              'Accept': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! <= 500;
            }),
      );
      print("::::::::<help   line >::::::::status code::::::::::::::");
      print(response.statusCode);
      print(response.data);
      responseJson = response;
    } on SocketException {
      print("no internet");
    }
    return responseJson;
  }

  helpLineApiServicehttp()async{
    dynamic responseJson;

    try{
      var url = Uri.parse(helpLineApiUrl);
      var response = await http.get(url);
      print("::::::::<search--category api>::::::::status code::::::::::::::");
      print("search category status code  ${response.statusCode}");
      print(response.body);
      responseJson = response;
    }
    on Exception catch (e) {
      // TODO
    }

    return responseJson;
  }

}
