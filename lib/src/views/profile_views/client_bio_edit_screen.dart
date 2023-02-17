import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/client/client_views/client_intro_screen/client_intro_screen.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class ClientBioEditScreen extends StatefulWidget {
  const ClientBioEditScreen({super.key});

  @override
  State<ClientBioEditScreen> createState() => _ClientBioEditScreenState();
}

class _ClientBioEditScreenState extends State<ClientBioEditScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(73),
        child: Container(
                height: 73,
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
                       Text("Edit Bio",
                             style: primaryFont.copyWith(
                             color: Colors.white,
                             fontSize: 24,
                             fontWeight: FontWeight.w600,
                          ),
                       ),
                    ],
                  ),
                ),
              ),),
              body: Column(
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
                      labelText: "Date of Birth",
                      //hintText: 'Graphic Designer',
                      suffixIcon: const Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 20,top: 40, right: 20),
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
                      labelText: "Education",
                      //hintText: 'Graphic Designer',
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 20,top: 40, right: 20),
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
                      labelText: "Professtion",
                      //hintText: 'Graphic Designer',
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 20,top: 40, right: 20),
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
                      labelText: "Experience",
                      //hintText: 'Graphic Designer',
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15,top: 100),
                  child: InkWell(
                    onTap: (){
                      Get.to(const ClientIntroScreen());
                    },
                    child: Container(
                      height: 43,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4), color: primaryColor),
                      alignment: Alignment.center,
                      child: Text(
                        "Continue",
                        style: primaryFont.copyWith(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                ],
              ),
    );
  }
}