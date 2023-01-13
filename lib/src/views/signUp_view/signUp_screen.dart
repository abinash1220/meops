import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/views/auth_views/create_account_view.dart';
import 'package:meops/src/views/auth_views/login_view.dart';
import 'package:meops/src/views/signUp_view/privacy_policy.dart';
import 'package:meops/src/views/signUp_view/terms_of_condition_screen.dart';

import '../../constant/app_font.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 300),
              child: Text("video",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                   color: primaryColor,
                   borderRadius: const BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Are You?",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.to(CreateAccountView());
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage("assets/icons/Vectorbag.png")),
                                Text("Professional",style: TextStyle(color:primaryColor,fontSize: 16)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Get.to(LoginView());
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage("assets/icons/search.png")),
                                Text("Client",style: TextStyle(color:primaryColor,fontSize: 16)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}