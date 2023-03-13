import 'dart:io';
import 'package:dio/dio.dart';
import 'package:meops/src/services/base_urls/base_urls_api_service.dart';
import 'package:http/http.dart' as http;

class SearchCategoryApiService extends BaseApiServices {
  Future searchCategoryApiService({required String category}) async {
    dynamic responseJson;
    try {
      var dio = Dio();
      // final prefs = await SharedPreferences.getInstance();
      // String? authtoken = prefs.getString("auth_token");
      var response = await dio.post(
        searchCategoryApiUrl,
        options: Options(
            headers: {
              'Accept': 'application/json',
            },
            
            validateStatus: (status) {
              return status! <= 500;
            }),
            data: {
              "search_key": "plu"
            }
      );
      print("::::::::<search--category api>::::::::status code::::::::::::::");
      print(">....................................${category}");
      print("search category status code  ${response.statusCode}");
      print(response.data);
      responseJson = response;
    } on SocketException {
      print("no internet");
    }
    return responseJson;
  }

  //http method
  searchcategoryhttp({required String searchkey})async{
    dynamic responseJson;
    try{
      var url = Uri.parse(searchCategoryApiUrl);
      var response = await http.post(url,
          body: {
            "search_key": searchkey
          }
      );
      print("::::::::<search--category api>::::::::status code::::::::::::::");
      print(">....................................${searchkey}");
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
