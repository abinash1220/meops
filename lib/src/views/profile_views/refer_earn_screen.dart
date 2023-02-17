import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class ReferAndEarn extends StatefulWidget {
  const ReferAndEarn({super.key});

  @override
  State<ReferAndEarn> createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
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
                      const SizedBox(width: 15,),
                       Text("Refer & Earn",
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
              const SizedBox(height: 200,),
              const Image(image: AssetImage("assets/icons/Group 1230.png")),
              const SizedBox(height: 10,),
               Text("Refer Your Friends, Earn Discounts",
                             style: primaryFont.copyWith(
                             color: primaryColor,
                             fontSize: 16,
                             fontWeight: FontWeight.w500,
                          ),
                       ),
                       const SizedBox(height: 10,),
                       Text("Invite your friends to join MEOPs and get discounts",
                             style: primaryFont.copyWith(
                             color: Colors.black,
                             fontSize: 16,
                             fontWeight: FontWeight.w500,
                          ),
                       ),
                       Text("for each friend who joins using your link",
                             style: primaryFont.copyWith(
                             color: Colors.black,
                             fontSize: 16,
                             fontWeight: FontWeight.w500,
                          ),
                       ),
                       Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15,top: 50),
                  child: Container(
                    height: 45,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5), color: primaryColor),
                    alignment: Alignment.center,
                    child: Text(
                      "Invite Now",
                      style: primaryFont.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}