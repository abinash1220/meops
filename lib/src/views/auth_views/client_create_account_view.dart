import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/controllers/auth_controllers.dart';
import 'package:meops/src/views/auth_views/login_view.dart';
import 'package:meops/src/views/signUp_view/privacy_policy.dart';
import 'package:meops/src/views/signUp_view/terms_of_condition_screen.dart';
import 'package:meops/src/views/update_kyc/client_update_kyc.dart';

class ClientCreateAccountView extends StatefulWidget {
  const ClientCreateAccountView({super.key});

  @override
  State<ClientCreateAccountView> createState() => _ClientCreateAccountViewState();
}

class _ClientCreateAccountViewState extends State<ClientCreateAccountView> {

  final authController = Get.find<AuthController>();

  bool isAgreedTerms = false;
  bool isAgreedTerms1 = false;
  bool isCookie = false;

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
                    value: isAgreedTerms1,
                    onChanged: (val) {
                      setState(() {
                        isAgreedTerms1 = val!;
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
            InkWell(
              onTap: (){
                showModalBottomSheet(
                  context: context,
                   shape:const RoundedRectangleBorder(
                   borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
                  ),
                  builder: (BuildContext context){
                  return Container(
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 20,top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Enter OTP",
                          style: primaryFont.copyWith(
                            color: primaryColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
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
                        margin: const EdgeInsets.only(left: 10,right: 10),
                        fillColor: const Color.fromARGB(255, 209, 207, 207),
                        textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                        borderWidth: 0,
                        showFieldAsBox: true, 
                        onCodeChanged: (String code) {
                        setState(() {
                            //otp = code;
                        });
                     },
                       onSubmit: (String verificationCode){
                         setState(() {
                         // otp = verificationCode;
                    });
                   }, 
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50,top: 20),
                      child: Row(
                        children: [
                            Text("Ditn't recieve OTP code?",
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
                    const SizedBox(height: 50,),
                    InkWell(
                      onTap: (){
                        Get.to(const ClientUpdateKyc());
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
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
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                        ),
                      ),
                    ),
                        ],
                      ),
                    ),
                    
                  );
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Container(
                  height: 42,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4), color: primaryColor),
                  alignment: Alignment.center,
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
