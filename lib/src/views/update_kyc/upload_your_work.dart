import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/views/update_kyc/add_more_links.dart';
import 'package:meops/src/views/update_kyc/select_files.dart';

import '../../constant/app_font.dart';

class UploadYorWork extends StatefulWidget {
  const UploadYorWork({super.key});

  @override
  State<UploadYorWork> createState() => _UploadYorWorkState();
}

class _UploadYorWorkState extends State<UploadYorWork> {

  bool isopen = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
          appBar: PreferredSize(
            preferredSize:const Size.fromHeight(150),
            child:  Container(
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
                          children:  [
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
                          const Image(image: AssetImage("assets/icons/Group 291.png")),
                          const SizedBox(width: 10,),
                           Text("Upload Your Work",
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
           body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 20),
                 child: Text("Work Link",
                                    style: primaryFont.copyWith(
                                      color: primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
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
                      helperStyle:const TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Text("Max 3 Links",
              style: primaryFont.copyWith(
                color: const Color.fromARGB(255, 102, 101, 101),
                fontSize: 10,
                fontWeight: FontWeight.w500
              ),
              ),
            ),
            if(isopen == true)
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
                      helperStyle:const TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            if(isopen == true)
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Text("Max 3 Links",
              style: primaryFont.copyWith(
                color: const Color.fromARGB(255, 102, 101, 101),
                fontSize: 10,
                fontWeight: FontWeight.w500
              ),
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {
                  isopen = true;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Add More Links",
                                            style: primaryFont.copyWith(
                                              color: primaryColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              ),
                                            ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 50),
              child: Container(
                height: 235,
                width: size.width,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 226, 225, 225),
                  border: Border.all(color: primaryColor,width: 2.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage("assets/icons/Vector (3).png")),
                    const SizedBox(height: 15,),
                     Container(
                    height: 24,
                    width: 101,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    
                    child: Center(
                      child: Text("Browse Files",
                      style: primaryFont.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text("Upto 10 images(2 Mb each), 2 Videos (20 Mb each)",
                      style: primaryFont.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                      ),
                      const SizedBox(height: 7,),
                      Text("& 2 Documents (20 Mb each)",
                      style: primaryFont.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            InkWell(
              onTap: (){
                Get.to(const SelectFiles());
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
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
            ),
  ]),
            
           );
    
  }
}