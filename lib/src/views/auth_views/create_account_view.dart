import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/auth_views/login_view.dart';

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({super.key});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  bool isAgreedTerms = false;
  bool isCookie = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
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
            child: Container(
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
            child: Container(
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
            child: Container(
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
              InkWell(
                onTap: (){
                  Get.to(CreateAccountView());
                },
                child: Text(
                  "I agree to the Terms of Service and aknowledge \nthe privacy Policy",
                  style: primaryFont.copyWith(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
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
              InkWell(
                 onTap: (){
                  Get.to(LoginView());
                },
                child: Text(
                  "Cookies message for acceptance",
                  style: primaryFont.copyWith(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Container(
              height: 55,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: primaryColor),
              alignment: Alignment.center,
              child: Text(
                "Continue",
                style: primaryFont.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
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
                      MaterialPageRoute(builder: (context) => LoginView()));
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
    );
  }
}
