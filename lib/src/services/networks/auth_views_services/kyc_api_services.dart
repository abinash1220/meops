import 'dart:io';
import 'package:dio/dio.dart';
import 'package:meops/src/models/register_kyc_model.dart';
import 'package:meops/src/services/base_urls/base_urls_api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KycApiService extends BaseApiServices {
  Future kycApiServices(RegisterKycModel registerkycModel) async {
    dynamic responseJson;

    try {
      var dio = Dio();

      FormData formData = FormData.fromMap({
        "userId": registerkycModel.userId,
        "name": registerkycModel.name,
        "pincode": registerkycModel.pincode,
        "city_id": registerkycModel.cityId,
        "address": registerkycModel.address,
        "contact_number": registerkycModel.contactNumber,
        "email": registerkycModel.email,
        "aadhaarcard_front": registerkycModel.aadhaarcardFront,
        "aadhaarcard_back": registerkycModel.aadhaarcardBack,
        "pancard_front": registerkycModel.pancardFront,
        "pancard_back": registerkycModel.panCardBack,
        "bank_accountType": registerkycModel.bankAccountType,
        "bank_accountName": registerkycModel..bankAccountName,
        "bank_accountNumber": registerkycModel..bankAccountNumber,
        "bank_ifsc_code": registerkycModel.ifscCode,
        "date_of_birth": registerkycModel.dob,
        "education": registerkycModel.education,
        "profession": registerkycModel.profession,
        "experience": registerkycModel.experience,
        for (int i = 0; i < registerkycModel.skillsList!.length; i++)
          "skill_details[$i]['skill']": registerkycModel.skillsList![i].skill,
        for (int i = 0; i < registerkycModel.skillsList!.length; i++)
          "skill_details[$i]['skill_level']":
              registerkycModel.skillsList![i].skillLevel,
        for (int i = 0; i < registerkycModel.skillsList!.length; i++)
          "skill_details[$i]['work_location']":
              registerkycModel.skillsList![i].workLocation,
        for (int i = 0; i < registerkycModel.skillsList!.length; i++)
          "skill_details[$i]['describe_your_work']":
              registerkycModel.skillsList![i].describeYourWork,
        for (int i = 0; i < registerkycModel.skillsList!.length; i++)
          "skill_details[$i]['rate_card']":
              registerkycModel.skillsList![i].rateCard,
        for (int i = 0; i < registerkycModel.skillsList!.length; i++)
          "work_link[$i]['name']": registerkycModel.skillsList![i].name,
        for (int i = 0; i < registerkycModel.link!.length; i++)
          "work_link[$i]['link']": registerkycModel.link![i],
        for (int i = 0; i < registerkycModel.workImages!.length; i++)
          "work_images[$i]": registerkycModel.workImages![i],
      });

      print("Data ::::::::::::");
      print(formData);
      final prefs = await SharedPreferences.getInstance();
      String? authtoken = prefs.getString("auth_token");
      var response = await dio.post(
        userRegisterKYC,
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
      print("::::::::<Register KYC API>::::::::status code::::::::::::::");
      print("...............${registerkycModel.skillsList!.length}");
      print(response.statusCode);
      print(response.data);
      responseJson = response;
    } on SocketException {
      print("no internet");
    }
    return responseJson;
  }
}
