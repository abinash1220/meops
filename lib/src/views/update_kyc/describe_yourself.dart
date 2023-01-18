import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/views/update_kyc/add_skills.dart';
import 'package:meops/src/views/update_kyc/upload_your_work.dart';

import '../../constant/app_font.dart';

class DescribeYourself extends StatefulWidget {
  const DescribeYourself({super.key});

  @override
  State<DescribeYourself> createState() => _DescribeYourselfState();
}

class _DescribeYourselfState extends State<DescribeYourself> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
           body: Column(
            children: [
              Container(
                width: size.width,
                height: 150,
                decoration:  BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 15),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back,color: Colors.white,size: 25,),
                          ],
                        ),
                        
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/icons/Vector (2).png")),
                          const SizedBox(width: 10,),
                           Text("Describe Yourself",
                                  style: primaryFont.copyWith(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    ),
                                  ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
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
                      labelText: "Skill",
                      hintText: 'Graphic Designer',
                      suffixIcon: Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
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
                      labelText: "Skill Level",
                      hintText: 'Beginner',
                      suffixIcon: Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
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
                      labelText: "Work Location",
                      hintText: 'Chennai',
                      suffixIcon: Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
              child: Container(
                height: 150,
                child: TextField(
                 maxLines: 100,
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
                      labelText: "Describe your work",
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Max 100 Words"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
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
                      labelText: "Rate Card",
                      hintText: 'Graphic Designer',
                      suffixIcon: Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 20
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Get.to(AddSkills());
                    },
                    child: Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("+ Add Skill",
                        style: primaryFont.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Get.to(UploadYorWork());
              },
              child: Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15,top: 20),
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
            ),
  ]),
            
           );
    
  }
}