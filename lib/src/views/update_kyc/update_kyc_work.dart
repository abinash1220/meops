import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/controllers/update_kyc_controller.dart';
import 'package:meops/src/views/profile_views/client_bio_edit_screen.dart';
import 'package:meops/src/views/update_kyc/describe_yourself.dart';

import '../../constant/app_font.dart';

class UpdateKyc extends StatefulWidget {
  const UpdateKyc({super.key});

  @override
  State<UpdateKyc> createState() => _UpdateKycState();
}

class _UpdateKycState extends State<UpdateKyc> {

   final updatekyccontroller = Get.find<UpdateKycController>();

   int index = 0;

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Obx ( () =>(
           Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height: 10,),
                   Text("Update KYC",
                                  style: primaryFont.copyWith(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 50,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                         InkWell(
                                          onTap: (){
                                            updatekyccontroller.index(0);
                                          },
                                           child: Column(
                                             children: [
                                               Text("Personal Details",
                                                                       style: primaryFont.copyWith(
                                                                           color: updatekyccontroller.index == 0 ? Colors.white : Colors.grey,
                                                                           fontSize: 12,
                                                                           fontWeight: FontWeight.w600,
                                                                           ),
                                                                       ),
                                                                       const SizedBox(height: 5,),
                                                                       Container(
                                                                           height: 5,
                                                                           width: 100,
                                                                           decoration: BoxDecoration(
                                                                              color: updatekyccontroller.index == 0 ? Colors.white : Colors.grey,
                                                                             borderRadius: BorderRadius.circular(5)
                                                                           ),
                                                                       ),
                                             ],
                                           ),
                                         ),
                                         InkWell(
                                          onTap: (){
                                            updatekyccontroller.index(1);
                                          },
                                           child: Column(
                                             children: [
                                               Text("ID Proof",
                                                                       style: primaryFont.copyWith(
                                                                           color:updatekyccontroller.index == 1 ? Colors.white : Colors.grey,
                                                                           fontSize: 12,
                                                                           fontWeight: FontWeight.w600,
                                                                           ),
                                                                       ),
                                                                       const SizedBox(height: 5,),
                                                                       Container(
                                                                           height: 5,
                                                                           width: 100,
                                                                           decoration: BoxDecoration(
                                                                              color:updatekyccontroller.index == 1 ? Colors.white : Colors.grey,
                                                                             borderRadius: BorderRadius.circular(5)
                                                                           ),
                                                                       ),
                                             ],
                                           ),
                                         ),
                                         InkWell(
                                          onTap: (){
                                            updatekyccontroller.index(2);
                                          },
                                           child: Column(
                                             children: [
                                               Text("Bank Details",
                                                                       style: primaryFont.copyWith(
                                                                           color:updatekyccontroller.index == 2 ? Colors.white : Colors.grey,
                                                                           fontSize: 12,
                                                                           fontWeight: FontWeight.w600,
                                                                           ),
                                                                       ),
                                                                       const SizedBox(height: 5,),
                                                                       Container(
                                                                           height: 5,
                                                                           width: 100,
                                                                           decoration: BoxDecoration(
                                                                              color:updatekyccontroller.index == 2 ? Colors.white : Colors.grey,
                                                                             borderRadius: BorderRadius.circular(5)
                                                                           ),
                                                                       ),
                                             ],
                                           ),
                                         ),
                                      ],
                                    ),
                                  ),
                      
                        ],
              ),
              Column(
                children: [
                  if(updatekyccontroller.index ==0)
                  Container(
                    height: 620,
                    width: size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Enter your details",
                          style: primaryFont.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                          ),
                          const SizedBox(height: 10,),
                           Text("Fill the details as per the ID proof",
                          style: primaryFont.copyWith(
                            fontSize: 18,
                            //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          ),
                          Padding(
              padding: const EdgeInsets.only(left: 0,top: 25, right: 20),
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
                      labelText: "Name",
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
                           Padding(
              padding: const EdgeInsets.only(left: 0, right: 20),
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
                      labelText: "Mobile No",
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 20),
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
                      labelText: "Email",
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 20),
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
                      labelText: "Address",
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 20),
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
                      labelText: "City",
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 20),
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
                      labelText: "Pincode",
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: (){
                setState(() {
                  updatekyccontroller.index(1);
                });
              },
              child: Padding(
                  padding: const EdgeInsets.only(right: 20,),
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
                      ),
                    ),
                  ),
                   if(updatekyccontroller.index == 1)
                  Container(
                    height: 620,
                    width: size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30,left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text("Upload ID Proofs",
                              style: primaryFont.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: primaryColor,
                              ),
                              ),
                              const SizedBox(height: 10,),
                               Text("Place your camera directly on top of your ID and",
                              style: primaryFont.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              ),
                              Text("take a picture (or) upload from device",
                              style: primaryFont.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              ),
                              const SizedBox(height: 10,),
                               Text("Aadhaar Card",
                              style: primaryFont.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: primaryColor,
                              ),
                              ),
                              const SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      showModalBottomSheet(
                  context: context,
                   shape:const RoundedRectangleBorder(
                   borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                  ),
                  builder: (BuildContext context){
                  return Container(
                    height: 235,
                    decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius:const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                    child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 108,
                                    width: 108,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                                          child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                      const  Image(image: AssetImage("assets/images/Group 1020.png")),
                                                      Text("Capture",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w600,color: primaryColor)),
                                                          ],
                                                          ),
                                                        ),
                                  ),
                                  Container(
                                    height: 108,
                                    width: 108,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                                          child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                      const  Image(image: AssetImage("assets/images/Group 1021.png")),
                                                      Text("Upload",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w600,color: primaryColor)),
                                                          ],
                                                          ),
                                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ]
                    ),
                    
                  );
                });
                                    },
                                    child: Container(
                                                            height: 100,
                                                            width: 100,
                                                            decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.circular(10),
                                                               border: Border.all(color: primaryColor)
                                                            ),
                                                            child: Center(
                                                              child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                          children: [
                                                          const  Image(image: AssetImage("assets/icons/Group 215.png")),
                                                          Text("Front",style: primaryFont.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: primaryColor,
                              ),),
                                                              ],
                                                              ),
                                                            ),
                                                          ),
                                  ),
                            InkWell(
                              onTap: (){
                                showModalBottomSheet(
                  context: context,
                   shape:const RoundedRectangleBorder(
                   borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                  ),
                  builder: (BuildContext context){
                  return Container(
                    height: 235,
                    decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius:const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                    child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 108,
                                    width: 108,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                                          child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                      const  Image(image: AssetImage("assets/images/Group 1020.png")),
                                                      Text("Capture",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w600,color: primaryColor)),
                                                          ],
                                                          ),
                                                        ),
                                  ),
                                  Container(
                                    height: 108,
                                    width: 108,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                                          child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                      const  Image(image: AssetImage("assets/images/Group 1021.png")),
                                                      Text("Upload",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w600,color: primaryColor)),
                                                          ],
                                                          ),
                                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ]
                    ),
                    
                  );
                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: primaryColor)
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Image(image: AssetImage("assets/icons/Group 215.png")),
                                      Text("Back",style: primaryFont.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: primaryColor,
                              ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                                ],
                              ),
                              const SizedBox(height: 30,),
                               Text("Pan Card",
                              style: primaryFont.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: primaryColor,
                              ),
                              ),
                              const SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      showModalBottomSheet(
                  context: context,
                   shape:const RoundedRectangleBorder(
                   borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                  ),
                  builder: (BuildContext context){
                  return Container(
                    height: 235,
                    decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius:const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                    child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 108,
                                    width: 108,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                                          child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                      const  Image(image: AssetImage("assets/images/Group 1020.png")),
                                                      Text("Capture",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w600,color: primaryColor)),
                                                          ],
                                                          ),
                                                        ),
                                  ),
                                  Container(
                                    height: 108,
                                    width: 108,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                                          child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                      const  Image(image: AssetImage("assets/images/Group 1021.png")),
                                                      Text("Upload",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w600,color: primaryColor)),
                                                          ],
                                                          ),
                                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ]
                    ),
                    
                  );
                });
                                    },
                                    child: Container(
                                                            height: 100,
                                                            width: 100,
                                                            decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.circular(10),
                                                               border: Border.all(color: primaryColor)
                                                            ),
                                                            child: Center(
                                                              child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                     const Image(image: AssetImage("assets/icons/Group 215.png")),
                                      Text("Front",style: primaryFont.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: primaryColor,
                              ),),
                                    ],
                                                              ),
                                                            ),
                                                          ),
                                  ),
                            InkWell(
                              onTap: (){
                                showModalBottomSheet(
                  context: context,
                   shape:const RoundedRectangleBorder(
                   borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                  ),
                  builder: (BuildContext context){
                  return Container(
                    height: 235,
                    decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius:const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                    child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 108,
                                    width: 108,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                                          child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                      const  Image(image: AssetImage("assets/images/Group 1020.png")),
                                                      Text("Capture",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w600,color: primaryColor)),
                                                          ],
                                                          ),
                                                        ),
                                  ),
                                  Container(
                                    height: 108,
                                    width: 108,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                                          child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                      const  Image(image: AssetImage("assets/images/Group 1021.png")),
                                                      Text("Upload",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w600,color: primaryColor)),
                                                          ],
                                                          ),
                                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ]
                    ),
                    
                  );
                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: primaryColor)
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                     const Image(image: AssetImage("assets/icons/Group 215.png")),
                                      Text("Back",style: primaryFont.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: primaryColor,
                              ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              children: [
                                InkWell(
              onTap: (){
                setState(() {
                  updatekyccontroller.index(2);
                });
              },
              child: Padding(
                  padding: const EdgeInsets.only(right: 20,),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                   if(updatekyccontroller.index ==2)
                  Container(
                    height: 620,
                    width: size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Enter your details",
                                  style: primaryFont.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: primaryColor,
                                  ),
                                  ),
                                  
                                ],
                              ),
                              const SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("Account Type",
                                  style: primaryFont.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: primaryColor,
                                  ),
                                  ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Row(
                                      children: [
                                        InkWell(
                                      onTap: (){
                                        setState(() {
                                          index =0;
                                        });
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 98,
                                        decoration: BoxDecoration(
                                          color:index == 0 ? primaryColor : Color.fromARGB(255, 213, 192, 252),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Text("Savings",
                                      style: primaryFont.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color:index == 0 ? Colors.white : primaryColor,
                                      ),
                                      ),
                                           ),
                                      ),
                                    ),
                                    const SizedBox(width: 20,),
                                    InkWell(
                                      onTap: (){
                                        setState(() {
                                          index = 1;
                                        });
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 98,
                                        decoration: BoxDecoration(
                                          color:index == 0 ? Color.fromARGB(255, 213, 192, 252) : primaryColor,
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                        child: Center(
                                          child: Text("Current",
                                      style: primaryFont.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color:index == 0 ? primaryColor : Colors.white,
                                      ),
                                      ),
                                           ),
                                      ),
                                    ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 20),
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
                          labelText: "Name as per Account",
                          labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 20),
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
                          labelText: "Account Number",
                          labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 20),
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
                          labelText: "Re-Enter Account No",
                          labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 20),
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
                          labelText: "IFSC Code",
                          labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            
            
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              children: [
                                InkWell(
              onTap: (){
                Get.to(const DescribeYourself());
              },
              child: Padding(
                  padding: const EdgeInsets.only(right: 20,),
                  child: Container(
                    height: 42,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5), color: primaryColor),
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
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
        )),
        ),
      ),
    );
  }
}