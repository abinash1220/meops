import 'dart:convert';

import 'package:dio/dio.dart'as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/models/category_api_model.dart';
import 'package:meops/src/models/search_category_model.dart';
import 'package:meops/src/models/sub_categorylist_api_model.dart';
import 'package:meops/src/services/networks/category_api_services/category_list_api_service.dart';
import 'package:meops/src/services/networks/category_api_services/search_category_api_service.dart';
import 'package:meops/src/services/networks/category_api_services/sub_category_list_api_service.dart';
import 'package:http/http.dart' as http;


class HomeController extends GetxController{
  
   GetCategoryListApiService catergorylistapiservice = GetCategoryListApiService();

   GetSubCategoryListApiService subcategorylistapiservice = GetSubCategoryListApiService();

   SearchCategoryApiService searchCategoryApiService = SearchCategoryApiService();

   List<ListCategory> categorylistmodel = [];

   List<SubCategoryData> subcategorydata = [];

   List<SearchCategoryData> searchCategoryData = [];
   
   //category list
   getcategorylist () async {

     dio.Response<dynamic> response =await catergorylistapiservice.categoryList();
     if(response.statusCode == 200){
        CategoryList categoryList = CategoryList.fromJson(response.data);
        categorylistmodel = categoryList.data;
     }
     else {
      Get.snackbar("Something went wrong", response.statusCode.toString(),
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
    update();
   }

   //sub-category list
   subcategory ({required String id}) async {

    dio.Response<dynamic> response = await subcategorylistapiservice.subCategoryList(id: id);
    if(response.statusCode == 200){
      SubCategoryList subCategoryList = SubCategoryList.fromJson(response.data);
      subcategorydata = subCategoryList.data;
    }else {
      Get.snackbar("Something went wrong", response.statusCode.toString(),
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
    update();

   }

   //search-category list

   searchCategory({required String category}) async {

    dio.Response<dynamic> response = await searchCategoryApiService.searchCategoryApiService(category: category);
    if(response.statusCode == 200){

       SearchCategory searchCategory = SearchCategory.fromJson(response.data);
       searchCategoryData = searchCategory.data;

    }else{
      Get.snackbar("Something went wrong", response.statusCode.toString(),
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
    update();
   }

   //http
   searchCategoryhttp({required String searchkey}) async {

    http.Response response = await searchCategoryApiService.searchcategoryhttp(searchkey: searchkey);
    if(response.statusCode == 200){

       SearchCategory searchCategory = SearchCategory.fromJson(jsonDecode(response.body));
       searchCategoryData = searchCategory.data;
       print(">>>>>>>>..search result length.....${searchCategoryData.length}");

    }else{
      Get.snackbar("Something went wrong", response.statusCode.toString(),
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
    update();
   }

}