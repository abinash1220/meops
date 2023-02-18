import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/models/login_api_model.dart';
import 'package:meops/src/models/register_api_model.dart';
import 'package:meops/src/models/verifyOtp_api_model.dart';
import 'package:meops/src/services/networks/auth_views_services/login_api_services/login_api_service.dart';
import 'package:meops/src/services/networks/auth_views_services/register_api_service.dart';
import 'package:meops/src/views/home_view/home_bottom_navigation_bar.dart';
import 'package:meops/src/views/update_kyc/update_kyc_work.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  RegisterApiService registerapi = RegisterApiService();
  LoginApiService loginapiservice = LoginApiService();
  RxBool loder = false.obs;
  RxInt index = 0.obs;

//personal
  var nameTextControler = TextEditingController();
  var mobileNumberController = TextEditingController();
  var emailController = TextEditingController();
  var addressController = TextEditingController();
  var cityController = TextEditingController();
  var pinCodeController = TextEditingController();

//id proofs
  List<File> aadharCardFrontpcs = [];
  List<File> aadharCardBackpcs = [];
  List<File> pancardFrontPics = [];
  List<File> panCardBackPics = [];

//bank details
  int accountType = 0;
  var accountNameController = TextEditingController();
  var accountNumberController = TextEditingController();
  var ifscCodeController = TextEditingController();

//describe your self
  var skillsController = TextEditingController();
  var skillLevelController = TextEditingController();
  var workLOcationController = TextEditingController();
  var descriptionController = TextEditingController();

  //describe your self
  var skillsController2 = TextEditingController();
  var skillLevelController2 = TextEditingController();
  var workLOcationController2 = TextEditingController();
  var descriptionController2 = TextEditingController();

  //describe your self
  var skillsController3 = TextEditingController();
  var skillLevelController3 = TextEditingController();
  var workLOcationController3 = TextEditingController();
  var descriptionController3 = TextEditingController();

  //describe your self
  var skillsController4 = TextEditingController();
  var skillLevelController4 = TextEditingController();
  var workLOcationController4 = TextEditingController();
  var descriptionController4 = TextEditingController();

  var workLinkController1 = TextEditingController();
  var workLinkController2 = TextEditingController();
  var workLinkController3 = TextEditingController();

  List<File> workFiles = [];

  register(
      {required RegisterModel registerModel,
      required BuildContext context,
      required var size}) async {
    loder(true);
    final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await registerapi.registerApi(registerModel);

    if (response.statusCode == 200) {
      Get.snackbar("incorrect", response.statusCode.toString());
      VerifyOtp verifyotp = VerifyOtp.fromJson(response.data);
      Get.snackbar("second", "after model");
      loder(false);
      verifyOtp(context, size, verifyotp.data);
    } else {
      Get.snackbar("Something went wrong", response.statusCode.toString(),
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  verifyOtp(BuildContext context, var size, RegisterData registerData) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
        ),
        builder: (context) {
          return Container(
            height: 400,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter OTP",
                        style: primaryFont.copyWith(
                          color: primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Enter the 6 digit code which is sent to your registered",
                        style: primaryFont.copyWith(
                          color: Colors.black,
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Mobile No 7325******",
                            style: primaryFont.copyWith(
                              color: Colors.black,
                              fontSize: 15,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Edit",
                            style: primaryFont.copyWith(
                              color: primaryColor,
                              fontSize: 15,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        child: OtpTextField(
                          numberOfFields: 6,
                          keyboardType: TextInputType.number,
                          filled: true,
                          fieldWidth: 40,
                          handleControllers: (controllers) async {
                            for (var i = 0; i < controllers.length; i++) {
                              controllers[i] = TextEditingController(
                                  text: registerData.otpNumber.toString()[i]);
                            }
                          },
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          fillColor: const Color.fromARGB(255, 209, 207, 207),
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          borderWidth: 0,
                          showFieldAsBox: true,
                          onCodeChanged: (String code) {},
                          onSubmit: (String verificationCode) {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 20),
                        child: Row(
                          children: [
                            Text(
                              "Ditn't recieve OTP code? ",
                              style: primaryFont.copyWith(
                                color: Colors.black,
                                fontSize: 15,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Resend OTP",
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
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: InkWell(
                            onTap: () {
                              Get.offAll(const UpdateKyc());
                            },
                            child: Container(
                              width: size.width,
                              height: 42,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                child: Text(
                                  "Continue",
                                  style: primaryFont.copyWith(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
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

  login({required LoginApiModel loginApiModel}) async {
    final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await loginapiservice.loginApi(loginApiModel);

    if (response.statusCode == 200) {
      Get.to(HomeBottomNavigationBar());
      Get.snackbar("Login successfully", "",
          colorText: Colors.white,
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.BOTTOM);
    } else if (response.statusCode == 401) {
      Get.snackbar("Invalid Email/Mobile No. or password", "",
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    } else {
      Get.snackbar("Something went wrong", response.statusCode.toString(),
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  getAadharFrontFromGellery() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    aadharCardFrontpcs.add(File(image!.path));
    update();
  }

  getAadharFrontFromCamera() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);

    aadharCardFrontpcs.add(File(image!.path));
    update();
  }

  getAadharBackFromGellery() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    aadharCardBackpcs.add(File(image!.path));
    update();
  }

  getAadharBackFromCamera() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);

    aadharCardBackpcs.add(File(image!.path));
    update();
  }

  getPanFrontFromGellery() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    pancardFrontPics.add(File(image!.path));
    update();
  }

  getPanFrontFromCamera() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);

    pancardFrontPics.add(File(image!.path));
    update();
  }

  getPanBackFromGellery() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    panCardBackPics.add(File(image!.path));
    update();
  }

  getPanBackFromCamera() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);

    panCardBackPics.add(File(image!.path));
    update();
  }

  picFiles() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: true);

    if (result != null) {
      List<File> files = result.paths.map((path) => File(path!)).toList();
      files.forEach((element) {
        workFiles.add(element);
      });
      update();
    } else {
      // User canceled the picker
    }
  }
}
