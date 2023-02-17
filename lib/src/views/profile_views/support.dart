import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                        child:const Icon(Icons.arrow_back,color: Colors.white,),
                      ),
                      
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Text("Support",
                                       style: primaryFont.copyWith(
                                       color: primaryColor,
                                       fontSize: 24,
                                       fontWeight: FontWeight.bold,
                                    ),
                                 ),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("Phone:",
                                         style: primaryFont.copyWith(
                                         color: primaryColor,
                                         fontSize: 16,
                                         fontWeight: FontWeight.w600,
                                      ),
                                   ),
                                   Text(" +9876543210/1234567890",
                                         style: primaryFont.copyWith(
                                         color: Colors.black,
                                         fontSize: 16,
                                         fontWeight: FontWeight.w500,
                                      ),
                                   ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Row(
                  children: [
                    Text("Email:",
                                         style: primaryFont.copyWith(
                                         color: primaryColor,
                                         fontSize: 16,
                                         fontWeight: FontWeight.w600,
                                      ),
                                   ),
                                   Text(" abc@gmail.com",
                                         style: primaryFont.copyWith(
                                         color: Colors.black,
                                         fontSize: 16,
                                         fontWeight: FontWeight.w500,
                                      ),
                                   ),
                  ],
                ),
              ),
        ],
      ),

    );
  }
}