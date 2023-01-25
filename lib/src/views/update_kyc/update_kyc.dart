import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/controllers/update_kyc_controller.dart';
import 'package:meops/src/views/update_kyc/describe_yourself.dart';

import '../../constant/app_font.dart';

class UpdateKycScreen extends StatefulWidget {
  const UpdateKycScreen({super.key});

  @override
  State<UpdateKycScreen> createState() => _UpdateKycScreenState();
}

class _UpdateKycScreenState extends State<UpdateKycScreen> {

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
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
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
                                                                           fontSize: 14,
                                                                           fontWeight: FontWeight.bold,
                                                                           ),
                                                                       ),
                                                                       const SizedBox(height: 5,),
                                                                       Container(
                                                                           height: 7,
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
                                                                           fontSize: 14,
                                                                           fontWeight: FontWeight.bold,
                                                                           ),
                                                                       ),
                                                                       const SizedBox(height: 5,),
                                                                       Container(
                                                                           height: 7,
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
                                                                           fontSize: 14,
                                                                           fontWeight: FontWeight.bold,
                                                                           ),
                                                                       ),
                                                                       const SizedBox(height: 5,),
                                                                       Container(
                                                                           height: 7,
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
                    height: 50,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5), color: primaryColor),
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
                        ],
                      ),
                    ),
                  ),
                   if(updatekyccontroller.index ==1)
                  Container(
                    height: 600,
                    width: size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Upload ID Proofs",
                          style: primaryFont.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                          ),
                          const SizedBox(height: 10,),
                           Text("Place your camera directly on top of your ID and",
                          style: primaryFont.copyWith(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          ),
                          Text("take a picture (or) upload from device",
                          style: primaryFont.copyWith(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          ),
                          const SizedBox(height: 10,),
                           Text("Aadhaar Card",
                          style: primaryFont.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                          ),
                          const SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                              Container(
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
                                Image(image: AssetImage("assets/icons/Group 215.png")),
                                Text("Front",style: TextStyle(color:primaryColor,fontSize: 16,fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        Container(
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
                                Image(image: AssetImage("assets/icons/Group 215.png")),
                                Text("Back",style: TextStyle(color:primaryColor,fontSize: 16,fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        
                            ],
                          ),
                          const SizedBox(height: 30,),
                           Text("Pan Card",
                          style: primaryFont.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                          ),
                          const SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                              Container(
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
                                Image(image: AssetImage("assets/icons/Group 215.png")),
                                Text("Front",style: TextStyle(color:primaryColor,fontSize: 16,fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        Container(
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
                                Image(image: AssetImage("assets/icons/Group 215.png")),
                                Text("Back",style: TextStyle(color:primaryColor,fontSize: 16,fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        
                            ],
                          ),
                           const SizedBox(
              height: 55,
            ),
            InkWell(
              onTap: (){
                setState(() {
                  updatekyccontroller.index(2);
                });
              },
              child: Padding(
                  padding: const EdgeInsets.only(right: 20,),
                  child: Container(
                    height: 50,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5), color: primaryColor),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Enter your details",
                          style: primaryFont.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                          ),
                          const SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Account Type",
                          style: primaryFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: primaryColor,
                          ),
                          ),
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
            const SizedBox(
              height: 55,
            ),
            InkWell(
              onTap: (){
                Get.to(DescribeYourself());
              },
              child: Padding(
                  padding: const EdgeInsets.only(right: 20,),
                  child: Container(
                    height: 50,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5), color: primaryColor),
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