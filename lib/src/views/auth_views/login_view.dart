import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/controllers/auth_controllers.dart';
import 'package:meops/src/models/login_api_model.dart';
import 'package:meops/src/views/auth_views/create_account_view.dart';
import 'package:meops/src/views/update_kyc/update_kyc_work.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isPasswordVisble = true;

  final authController = Get.find<AuthController>();

  TextEditingController useremailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    authController.loder(false);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(
          //   height: 100,
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Welcome Back",
              style: primaryFont.copyWith(
                  color: primaryColor, fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
           Padding(
            padding:  const EdgeInsets.only(left: 15, right: 15),
            child: SizedBox(
              height: 50,
              child: TextField(
                controller: useremailController,
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
                controller: passwordController,
                obscureText: isPasswordVisble,
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
                    labelStyle: primaryFont.copyWith(color: primaryColor),
                    suffixIcon:  InkWell(
                            onTap: () {
                              setState(() {
                                isPasswordVisble = !isPasswordVisble;
                              });
                            },
                            child: isPasswordVisble ? const Icon(Icons.visibility_off,color: Colors.grey,) : const Icon(Icons.visibility,color: Colors.grey,) ),
                    ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  "Forgot Password?",
                  style: primaryFont.copyWith(color: primaryColor),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),
          Obx(() =>(
             InkWell(
              onTap: (){
                if(useremailController.text.isNotEmpty && 
                   passwordController.text.isNotEmpty 
                    ){
                       authController.login(loginApiModel: LoginApiModel(
                        userEmail: useremailController.text, 
                        password: passwordController.text
                        ));
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
                  child: authController.loder.isTrue ? const CircularProgressIndicator(color: Colors.white,) : Text(
                    "Login",
                    style: primaryFont.copyWith(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
          )),
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
                "Login with",
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
                "Don't have an account? ",
                style: primaryFont.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              InkWell(
                onTap: (){
                  Get.to(CreateAccountView(role: "",));
                },
                child: Text(
                  "Sign Up",
                  style: primaryFont.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: primaryColor),
                ),
              ),
            ],
          ),
         
          
        ],
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.only(left: 15, right: 15,bottom: 40),
        child: Text(
            "This app uses cookies for personalized content and analytics. By using the app services, you agree to the use of cookies. Learn More"),
      ),
    );
  }
}
