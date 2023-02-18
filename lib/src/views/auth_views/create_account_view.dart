import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/controllers/auth_controllers.dart';
import 'package:meops/src/models/register_api_model.dart';
import 'package:meops/src/views/auth_views/login_view.dart';
import 'package:meops/src/views/signUp_view/privacy_policy.dart';
import 'package:meops/src/views/signUp_view/terms_of_condition_screen.dart';
import 'package:meops/src/views/update_kyc/update_kyc_work.dart';

class CreateAccountView extends StatefulWidget {
  String role;
   CreateAccountView({super.key,required this.role});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  bool isAgreedTerms = false;
  bool isCookie = false;
  bool isPasswordVisble = true;
  bool isPasswordVisble1 = true;

  final authcontroller = Get.find<AuthController>(); 

  TextEditingController emailController = TextEditingController();
  TextEditingController setPassController = TextEditingController();
  TextEditingController conPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Create Your Account",
                style: primaryFont.copyWith(
                    color: primaryColor, fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SizedBox(
                height: 50,
                child: TextField(
                  controller: emailController,
                  cursorColor: primaryColor,
                  decoration: InputDecoration(
                      isDense: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: primaryColor,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: primaryColor,
                      )),
                      labelText: "Email/Mobile No",
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SizedBox(
                height: 50,
                child: TextField(
                  controller: setPassController,
                  obscureText: isPasswordVisble,
                  cursorColor: primaryColor,
                  decoration: InputDecoration(
                      isDense: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: primaryColor,
                      
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: primaryColor,
                      )),
                      labelText: "Set Password",
                      suffixIcon:  InkWell(
                            onTap: () {
                              setState(() {
                                isPasswordVisble = !isPasswordVisble;
                              });
                            },
                            child: isPasswordVisble ? const Icon(Icons.visibility_off,color: Colors.grey,) : const Icon(Icons.visibility,color: Colors.grey,) ),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SizedBox(
                height: 50,
                child: TextField(
                  controller: conPassController,
                  obscureText: isPasswordVisble,
                  cursorColor: primaryColor,
                  decoration: InputDecoration(
                      isDense: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: primaryColor,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: primaryColor,
                      )),
                      labelText: "Confirm Password",
                      suffixIcon:  InkWell(
                            onTap: () {
                              setState(() {
                                isPasswordVisble1 = !isPasswordVisble1;
                              });
                            },
                            child: isPasswordVisble1 ? const Icon(Icons.visibility_off,color: Colors.grey,) : const Icon(Icons.visibility,color: Colors.grey,) ),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    activeColor: primaryColor,
                    side: BorderSide(color: primaryColor),
                    value: isAgreedTerms,
                    onChanged: (val) {
                      setState(() {
                        isAgreedTerms = val!;
                      });
                    }),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                           Text(
                          "I agree to the ",
                          style: primaryFont.copyWith(
                             fontSize: 15,
                             color: Colors.black,
                             fontWeight: FontWeight.w500),
                        ),
                         InkWell(
                          onTap: (){
                            Get.to(const TermsOfCondition());
                          },
                           child: Text(
                            "Terms of Service ",
                            style: primaryFont.copyWith(
                               fontSize: 15,
                               color: Colors.black,
                               fontWeight: FontWeight.w500,
                               decoration: TextDecoration.underline),
                                                 ),
                         ),
                         Text(
                          "and aknowledge ",
                          style: primaryFont.copyWith(
                             fontSize: 15,
                             color: Colors.black,
                             fontWeight: FontWeight.w500),
                        ),
                        ],
                      ),
                      Row(
                        children: [
                           Text(
                          "the ",
                          style: primaryFont.copyWith(
                             fontSize: 15,
                             color: Colors.black,
                             fontWeight: FontWeight.w500),
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(const PrivacyPolicy());
                          },
                          child: Text(
                            "Privacy Policy",
                            style: primaryFont.copyWith(
                               fontSize: 15,
                               color: Colors.black,
                               fontWeight: FontWeight.w500,
                               decoration: TextDecoration.underline),
                          ),
                        ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            //child: Text(
                     // "I agree to the Terms of Service and aknowledge \nthe privacy Policy",
                     // style: primaryFont.copyWith(
                         // fontSize: 15,
                         // color: Colors.black,
                         // fontWeight: FontWeight.w500),
                  //  ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    activeColor: primaryColor,
                    side: BorderSide(color: primaryColor),
                    value: isCookie,
                    onChanged: (val) {
                      setState(() {
                        isCookie = val!;
                      });
                    }),
                Text(
                  "Cookies message for acceptance",
                  style: primaryFont.copyWith(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Obx( () =>
               InkWell(
                onTap: (){
                   if(emailController.text.isNotEmpty &&
                      setPassController.text.isNotEmpty &&
                      conPassController.text.isNotEmpty &&
                      isAgreedTerms == true &&
                      isCookie == true
                   ){
                    if(setPassController.text == conPassController.text){
                      authcontroller.register(registerModel: RegisterModel(
                      emailmobilenumber: emailController.text,
                      password: setPassController.text,
                      usertype: widget.role,
                      isAgreed: isAgreedTerms ? "1" : "0",
                      isCookies: isCookie ? "1" : "0"
                      ), 
                    context: context, size: size);
                    }else{
                      Get.snackbar("Incorrect", "password & confirmPassword does not match");
                    }
                    
                   }else{
                      Get.snackbar("please fill all the fields", "incorrect");
                   }
                }, 
                child: Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: Container(
                    height: 42,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4), color: primaryColor),
                    alignment: Alignment.center,
                    child:authcontroller.loder.isTrue ? const CircularProgressIndicator(color: Colors.white,) : Text(
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
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 130,
                  color: Colors.black54,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text("or"),
                ),
                Container(
                  height: 1,
                  width: 130,
                  color: Colors.black54,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Signup with",
                  style: primaryFont.copyWith(
                      color: primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/Google.png"),
                const SizedBox(
                  width: 15,
                ),
                Image.asset("assets/icons/apple.png"),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already having an Account? ",
                  style: primaryFont.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const LoginView()));
                  },
                  child: Text(
                    "Sign in",
                    style: primaryFont.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: primaryColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

 
}
