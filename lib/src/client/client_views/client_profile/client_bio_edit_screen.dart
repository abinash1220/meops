import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/client/client_views/client_intro_screen/client_intro_screen.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/controllers/auth_controllers.dart';

class ClientBioEditPage extends StatefulWidget {
  const ClientBioEditPage({super.key});

  @override
  State<ClientBioEditPage> createState() => _ClientBioEditPageState();
}

class _ClientBioEditPageState extends State<ClientBioEditPage> {

  final authController = Get.find<AuthController>(); 

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(73),
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
              body: ListView(
                children: [
                   Padding(
              padding: const EdgeInsets.only(left: 20,top: 50, right: 20),
              child: SizedBox(
                height: 50,
                child: TextField(
                  controller: authController.dateOfBirthController,
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
                  controller: authController.educationController,
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
                  controller: authController.professtionController,
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
                  controller: authController.experienceController,
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
                  padding: const EdgeInsets.only(right: 15, left: 15,top: 150),
                  child: InkWell(
                    onTap: (){
                      if(authController.dateOfBirthController.text.isNotEmpty &&
                         authController.educationController.text.isNotEmpty &&
                         authController.professtionController.text.isNotEmpty &&
                         authController.experienceController.text.isNotEmpty
                      ){
                        authController.kycupdate();
                      }else{
                        Get.snackbar("please fill all the fields", "");
                      }
                    },
                    child: Container(
                      height: 43,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4), color: primaryColor),
                      alignment: Alignment.center,
                      child: Text(
                        "Save",
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