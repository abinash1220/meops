import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/views/auth_views/client_create_account_view.dart';
import 'package:meops/src/views/auth_views/create_account_view.dart';

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
              style: TextStyle(fontWeight: FontWeight.w400,fontSize: 35),
              ),
            ),
            Container(
              height: 303,
              decoration: BoxDecoration(
                   color: primaryColor,
                   borderRadius: const BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Are You?",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.to(const CreateAccountView());
                        },
                        child: Container(
                          height: 100,
                          width: 102,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Image(image: AssetImage("assets/icons/Vectorbag.png")),
                                Text("Professional",style: TextStyle(color:primaryColor,fontSize: 16)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Get.to(const ClientCreateAccountView());
                        },
                        child: Container(
                          height: 100,
                          width: 102,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Image(image: AssetImage("assets/icons/search.png")),
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