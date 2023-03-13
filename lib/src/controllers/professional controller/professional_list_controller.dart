import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/models/professional%20models/get_professional_list_model.dart';
import 'package:meops/src/services/networks/professional_views/get_professional_list_api_services.dart';

class ProfessionController extends GetxController{
   
   GetProfessionalListApiService getProfessionalListApiService = GetProfessionalListApiService();
   
   List<ProfessionalListData> professionallistdata = [];

   getProfessionalList({
    required String category,
        required String subcategory,
        required String usertype,
        required String perpage,
   }) async {
      professionallistdata.clear();
    dio.Response<dynamic> response = await getProfessionalListApiService.professionalList(
      category: category, subcategory: subcategory, usertype: usertype, perpage: perpage);

      if(response.statusCode == 200){
        GetProfessionalList professionallistmodel = GetProfessionalList.fromJson(response.data);
        professionallistdata = professionallistmodel.data; 
      }else{
        Get.snackbar("Something went wrong", response.statusCode.toString(),
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
      }
      update();
   }


}