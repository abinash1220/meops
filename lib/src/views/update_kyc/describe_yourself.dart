import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/views/update_kyc/upload_your_work.dart';

import '../../constant/app_font.dart';

class DescribeYourself extends StatefulWidget {
  const DescribeYourself({super.key});

  @override
  State<DescribeYourself> createState() => _DescribeYourselfState();
}

class _DescribeYourselfState extends State<DescribeYourself> {

   bool ishidefield = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(150),
        child:Container(
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
                            InkWell(
                              onTap: (){
                                Get.back();
                              },
                              child:const Icon(Icons.arrow_back,color: Colors.white,size: 25,)),
                          ],
                        ),
                        
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(image: AssetImage("assets/icons/Vector (2).png")),
                          const SizedBox(width: 10,),
                           Text("Describe Yourself",
                                  style: primaryFont.copyWith(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    ),
                                  ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      ),
           body: ListView(
            children: [
              Column(
                children: [
              Padding(
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
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
                      labelText: "Skill",
                      hintText: 'Graphic Designer',
                      suffixIcon:const Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
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
                      labelText: "Skill Level",
                      hintText: 'Beginner',
                      suffixIcon: const Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
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
                      labelText: "Work Location",
                      hintText: 'Chennai',
                      suffixIcon:const Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
              child: SizedBox(
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
                children:const [
                   Text("Max 100 Words"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
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
                      labelText: "Rate Card",
                      hintText: 'Enter Amount',
                      suffixIcon:const Padding(
                        padding:  EdgeInsets.only(right: 140),
                        child:  Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text("Per day",textAlign: TextAlign.center,),
                        ),
                      ),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
             ],
              ),
            //
           
            if(ishidefield == true)
            Column(
              children: [
                const SizedBox(height: 10,),
                 Text("_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _",
                style: TextStyle(color: primaryColor),
                ),
            Padding( 
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
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
                      labelText: "Skill",
                      hintText: 'Graphic Designer',
                      suffixIcon:const Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
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
                      labelText: "Skill Level",
                      hintText: 'Beginner',
                      suffixIcon:const Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
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
                      labelText: "Work Location",
                      hintText: 'Chennai',
                      suffixIcon: const Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
              child: SizedBox(
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
                children:const [
                   Text("Max 100 Words"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20, right: 20),
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
                      labelText: "Rate Card",
                      hintText: 'Enter Amount',
                      suffixIcon:const Padding(
                        padding:  EdgeInsets.only(right: 140),
                        child:  Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text("Per day",textAlign: TextAlign.center,),
                        ),
                      ),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
             ],
            ),
            //
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 20
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        ishidefield = true;
                      });
                    },
                    child: Container(
                      height: 36,
                      width: 104,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text("+ Add Skill",
                        style: primaryFont.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
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
                Get.to(const UploadYorWork());
              },
              child: Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15,top: 20),
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
  
        ],
            )     
           );
    
  }
}