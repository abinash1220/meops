import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                    height: 80,
                    decoration:  BoxDecoration(
                        color: primaryColor,
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25,left: 20),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (){
                              Get.back();
                            },
                            child:Icon(Icons.arrow_back,color: Colors.white,),
                          ),
                          const SizedBox(width: 15,),
                           Text("Language",
                                 style: primaryFont.copyWith(
                                 color: Colors.white,
                                 fontSize: 24,
                                 fontWeight: FontWeight.w500,
                              ),
                           ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage("assets/icons/Group 812.png")),
                            const SizedBox(width: 20,),
                            Text("English",
                                           style: primaryFont.copyWith(
                                           color: primaryColor,
                                           fontSize: 16,
                                           fontWeight: FontWeight.w600,
                                        ),
                                     ),
                          ],
                        ),
                        Row(
                          children: [
                             Image(height: 20,width: 20,fit: BoxFit.fill,
                              image: AssetImage("assets/icons/Vector (6).png")),
                          ],
                        ),
                      ],
                    ),
                  ),
                 const Padding(
                    padding:  EdgeInsets.only(left: 15,right: 15,top: 10),
                    child:  Divider(
                      thickness: 1.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Row(
                      children: [
                        Image(image: AssetImage("assets/icons/Group 812.png")),
                        const SizedBox(width: 20,),
                        Text("Tamil",
                                       style: primaryFont.copyWith(
                                       color: primaryColor,
                                       fontSize: 16,
                                       fontWeight: FontWeight.w600,
                                    ),
                                 ),
                      ],
                    ),
                  ),
                  
            ],
          ),
          Column(
            children: [
              Text("Version 2.0",
                                   style: primaryFont.copyWith(
                                   color: primaryColor,
                                   fontSize: 16,
                                   fontWeight: FontWeight.w500,
                                ),
                             ),
                             const SizedBox(height: 40,),
            ],
          ),
        ],
      ),

    );
  }
}