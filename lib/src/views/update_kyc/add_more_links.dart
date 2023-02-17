import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/views/update_kyc/select_files.dart';

import '../../constant/app_font.dart';

class AddMoreLinks extends StatefulWidget {
  const AddMoreLinks({super.key});

  @override
  State<AddMoreLinks> createState() => _AddMoreLinksState();
}

class _AddMoreLinksState extends State<AddMoreLinks> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
           body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          Image(image: AssetImage("assets/icons/Group 291.png")),
                          const SizedBox(width: 10,),
                           Text("Upload Your Work",
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
                 padding: const EdgeInsets.only(top: 20,left: 20),
                 child: Text("Work Link",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
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
                      hintText: 'Past Link',
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Text("Max 3 Links",
              style: primaryFont.copyWith(
                color: Color.fromARGB(255, 102, 101, 101),
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 20,top: 10, right: 20),
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
                      hintText: 'Past Link',
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Text("Max 3 Links",
              style: primaryFont.copyWith(
                color: Color.fromARGB(255, 102, 101, 101),
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Add More Links",
                                          style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            ),
                                          ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
              child: Container(
                height: 250,
                width: size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 226, 225, 225),
                  border: Border.all(color: primaryColor,width: 2.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("assets/icons/Vector (3).png")),
                    const SizedBox(height: 15,),
                     Container(
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    
                    child: Center(
                      child: Text("Browse Files",
                      style: primaryFont.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text("Upto 10 images(2 Mb each), 2 Videos (20 Mb each)",
                      style: primaryFont.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      ),
                      const SizedBox(height: 7,),
                      Text("& 2 Documents (20 Mb each)",
                      style: primaryFont.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            InkWell(
              onTap: (){
                Get.to(SelectFiles());
              },
              child: Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15,top: 50),
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
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
            ),
  ]),
            
           );
    
  }
}