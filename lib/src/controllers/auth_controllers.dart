import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart' as dio;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/models/help_line_api_model.dart';
import 'package:meops/src/models/login_api_model.dart';
import 'package:meops/src/models/register_api_model.dart';
import 'package:meops/src/models/register_kyc_model.dart';
import 'package:meops/src/models/verifyOtp_api_model.dart';
import 'package:meops/src/services/networks/auth_views_services/help_line_api_services.dart';
import 'package:meops/src/services/networks/auth_views_services/kyc_api_services.dart';
import 'package:meops/src/services/networks/auth_views_services/login_api_services/login_api_service.dart';
import 'package:meops/src/services/networks/auth_views_services/register_api_service.dart';
import 'package:meops/src/views/home_view/home_bottom_navigation_bar.dart';
import 'package:meops/src/views/splash_view/Splash_screen.dart';
import 'package:meops/src/views/update_kyc/update_kyc_work.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  RegisterApiService registerapi = RegisterApiService();
  LoginApiService loginapiservice = LoginApiService();
  KycApiService kycapiservice = KycApiService();
  RxBool loder = false.obs;
  RxInt index = 0.obs;
  int? userId;

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

  //client bio details

  var dateOfBirthController = TextEditingController();
  var educationController = TextEditingController();
  var professtionController = TextEditingController();
  var experienceController = TextEditingController();

  List<File> workFiles = [];

  register(
      {required RegisterModel registerModel,
      required BuildContext context,
      required var size}) async {
    loder(true);
    final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await registerapi.registerApi(registerModel);
        loder(false);
    if (response.statusCode == 200) {
      //Get.snackbar("incorrect", response.statusCode.toString());
      VerifyOtp verifyotp = VerifyOtp.fromJson(response.data);
      //Get.snackbar("second", "after model");
     
      verifyOtp(context, size, verifyotp.data);
    } else if(response.statusCode == 201){
          Get.snackbar("This user already signed up !", response.statusCode.toString(),
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }else{
      Get.snackbar("Something went wrong", "",
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
                                 userId = registerData.id;
                                   Get.offAll( UpdateKyc(usertype: registerData.userType));
                              
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

  login({required LoginApiModel loginApiModel})async{
    loder(true);
    final prefs = await SharedPreferences.getInstance();
    dio.Response<dynamic> response =
        await loginapiservice.loginApi(loginApiModel);
     loder(false);
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

  kycupdate() async {
    loder(true);
    RegisterKycModel registerKycModel = RegisterKycModel(
     aadhaarcardBack: aadharCardBackpcs.last,
     address: addressController.text,
     aadhaarcardFront: aadharCardFrontpcs.last,
     bankAccountName: accountNameController.text,
     bankAccountNumber: accountNumberController.text,
     bankAccountType: accountType.toString(),
     cityId: cityController.text,
     contactNumber: mobileNumberController.text,
     userId: userId,
      name: nameTextControler.text,
      email: emailController.text,
      pancardFront: pancardFrontPics.last,
      panCardBack: panCardBackPics.last,
      pincode: pinCodeController.text,
      ifscCode: ifscCodeController.text,
      dob: dateOfBirthController.text,
      education: educationController.text,
      profession: professtionController.text,
      experience: experienceController.text,
      
      skillsList: [
       if(skillsController.text.isNotEmpty) SkillsLevelModel(
          skill: skillsController.text,
          skillLevel: skillLevelController.text,
          workLocation: workLOcationController.text,
          describeYourWork: descriptionController.text,
          
        ),

        if(skillsController2.text.isNotEmpty) SkillsLevelModel(
          skill: skillsController2.text,
          skillLevel: skillLevelController2.text,
          workLocation: workLOcationController2.text,
          describeYourWork: descriptionController2.text,
        ),

        if(skillsController3.text.isNotEmpty) SkillsLevelModel(
          skill: skillsController3.text,
          skillLevel: skillLevelController3.text,
          workLocation: workLOcationController3.text,
          describeYourWork: descriptionController3.text,
        ),

        if(skillsController4.text.isNotEmpty) SkillsLevelModel(
          skill: skillsController4.text,
          skillLevel: skillLevelController4.text,
          workLocation: workLOcationController4.text,
          describeYourWork: descriptionController4.text,
          
        ),
      ],

      link: [
          if(workLinkController1.text.isNotEmpty)
          workLinkController2.text,
          if(workLinkController2.text.isNotEmpty)
          workLinkController3.text,
      ],

      workImages: workFiles,
      
    );
    dio.Response<dynamic> response = await kycapiservice.kycApiServices(registerKycModel);
    if(response.statusCode == 201){
      Get.to(const IntroductionScreens());
    }else{
      Get.snackbar("Something went wrong", response.statusCode.toString(),
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }

  }

  //help line 
  HelpLineApiService helpLineApiService = HelpLineApiService();

  RxString termsandcondition = "".obs;
  RxString privacyPolicy = "".obs;
  RxString paymentPolicy = "".obs;

  helpLineList() async {
  
    dio.Response<dynamic> response = await helpLineApiService.helpLineApiService();
    if(response.statusCode == 200){
      HelpLine helpLinemodel = HelpLine.fromJson(response.data);
      termsandcondition(helpLinemodel.termsConditions);
      privacyPolicy(helpLinemodel.privacyPolicy);
      paymentPolicy(helpLinemodel.paymentPolicy);
    }else{
          Get.snackbar("Something went wrong", response.statusCode.toString(),
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
     update();
  }

  //http

   helpLineListhttp() async {
  
    http.Response response = await helpLineApiService.helpLineApiServicehttp();
    if(response.statusCode == 200){
    
      HelpLine helpLinemodel = HelpLine.fromJson(jsonDecode(response.body));
      termsandcondition(helpLinemodel.termsConditions);
      privacyPolicy(helpLinemodel.privacyPolicy);
      paymentPolicy(helpLinemodel.paymentPolicy);
    }else{
          Get.snackbar("Something went wrong", response.statusCode.toString(),
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
    }
     update();
  }

}
