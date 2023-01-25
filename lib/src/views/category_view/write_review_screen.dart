import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({super.key});

  @override
  State<WriteReviewScreen> createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container(
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
                        child:Icon(Icons.arrow_back,color: Colors.white,),
                      ),
                      const SizedBox(width: 15,),
                       Text("Write Review",
                             style: primaryFont.copyWith(
                             color: Colors.white,
                             fontSize: 24,
                             fontWeight: FontWeight.w500,
                          ),
                       ),
                    ],
                  ),
                ),
              ),),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
              padding: const EdgeInsets.only(left: 15,top: 20, right: 15),
              child: Container(
                height: 180,
                child: TextField(
                 maxLines: 120,
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
                      labelText: "Description",
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:const [
                  Text("Max 120 Words"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 15),
              child: Text("Rate Rajesh’s work",
                                       style: primaryFont.copyWith(
                                       color: primaryColor,
                                       fontSize: 14,
                                       fontWeight: FontWeight.w400,
                                    ),
                                 ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:const [
                   Image(image: AssetImage("assets/icons/Vector (13).png")),
                   Image(image: AssetImage("assets/icons/Vector (13).png")),
                   Image(image: AssetImage("assets/icons/Vector (13).png")),
                   Image(image: AssetImage("assets/icons/Vector (13).png")),
                   Image(image: AssetImage("assets/icons/Vector (13).png")),
                ],
              ),
            ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Container(
            height: 43,
            width: size.width,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text("Submit Review",
                                                  style: primaryFont.copyWith(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                 ),
                                              ),
              ),
          ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
    );
  }
}