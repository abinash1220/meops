import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/models/register_api_model.dart';
import 'package:meops/src/models/verifyOtp_api_model.dart';
import 'package:meops/src/services/networks/auth_views_services/register_api_service.dart';
import 'package:meops/src/views/update_kyc/update_kyc_work.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController{

  RegisterApiService registerapi = RegisterApiService();

  register ({required RegisterModel registerModel,required BuildContext context,required var size}) async {
     
     final prefs = await SharedPreferences.getInstance();
     dio.Response<dynamic> response = await registerapi.registerApi(registerModel);

     if(response.statusCode == 200){
       // VerifyOtp verifyotp = VerifyOtp.fromJson(response.data);
        verifyOtp(context, size);
     }else{
      Get.snackbar("Something went wrong", response.statusCode.toString(),
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }

  }

  verifyOtp (BuildContext context, var size ){
    showModalBottomSheet(
                  context: context,
                   shape:const RoundedRectangleBorder(
                   borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
                  ),
                  builder: (context){
                  return Container(
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 20,top: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Enter OTP",
                              style: primaryFont.copyWith(
                                color: primaryColor,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Text("Enter the 6 digit code which is sent to your registered",
                              style: primaryFont.copyWith(
                                color: Colors.black,
                                fontSize: 15,
                                //fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text("Mobile No 7325******",
                              style: primaryFont.copyWith(
                                color: Colors.black,
                                fontSize: 15,
                                //fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Edit",
                              style: primaryFont.copyWith(
                                color: primaryColor,
                                fontSize: 15,
                                //fontWeight: FontWeight.bold,
                                ),
                              ),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              SizedBox(
                          height: 50,
                          child: OtpTextField(
                            numberOfFields: 6,
                            keyboardType: TextInputType.number,
                            filled: true,
                            fieldWidth: 40,
                            margin:const  EdgeInsets.only(left: 10,right: 10),
                            fillColor:const Color.fromARGB(255, 209, 207, 207),
                            textStyle:const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                            borderWidth: 0,
                            showFieldAsBox: true, 
                            onCodeChanged: (String code) {
                            
                     },
                           onSubmit: (String verificationCode){
                             
                   }, 
                          ),
                    ),
                    Padding(
                          padding: const EdgeInsets.only(left: 50,top: 20),
                          child: Row(
                            children: [
                                Text("Ditn't recieve OTP code? ",
                                style: primaryFont.copyWith(
                                  color: Colors.black,
                                  fontSize: 15,
                                  //fontWeight: FontWeight.bold,
                                  ),
                                ),
                                 Text("Resend OTP",
                                style: primaryFont.copyWith(
                                  color: primaryColor,
                                  fontSize: 15,
                                  //fontWeight: FontWeight.bold,
                                  ),
                                ),
                            ],
                          ),
                    ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Column(
                      children: [
                        InkWell(
                            onTap: (){
                              Get.to(const UpdateKyc());
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: InkWell(
                                onTap: (){

                                },
                                child: Container(
                                  width: size.width,
                                  height: 42,
                                  decoration: BoxDecoration(
                                     color: primaryColor,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child:  Center(
                                    child:  Text("Continue",
                                    style: primaryFont.copyWith(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                    ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ),
                      ],
                    ),
                          ),
                        ],
                      ),
                    ),
                    
                  );
                });
  }

}