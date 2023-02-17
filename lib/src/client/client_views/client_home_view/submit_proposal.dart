import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class SubmitProposalScreen extends StatefulWidget {
  const SubmitProposalScreen({super.key});

  @override
  State<SubmitProposalScreen> createState() => _SubmitProposalScreenState();
}

class _SubmitProposalScreenState extends State<SubmitProposalScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(80),
        child: Container(
                height: 80,
                decoration:  BoxDecoration(
                    color: primaryColor,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25,left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              Get.back();
                            },
                            child:const Icon(Icons.arrow_back,color: Colors.white,),
                          ),
                        ],
                      ),
              ]),),
    )),
    body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                      children: [
                                        const Image(
                                            image: AssetImage(
                                                "assets/images/prf2.png")),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "Madhu",
                                              style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "chennai",
                                              style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Padding(
                                          padding:  EdgeInsets.only(bottom: 10),
                                          child:  Image(
                                              image: AssetImage(
                                                  "assets/icons/Vector (6).png")),
                                        ),
                                        const SizedBox(
                                          width: 35,
                                        ),
                                        
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      "4.0(46)",
                                      style: primaryFont.copyWith(
                                        color: primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                      ],
                                    ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Text(
                                              "Projects Details",
                                              style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const SizedBox(height: 15,),
                                            Container(
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
                      labelText: "Title of projects",
                      //hintText: 'Chennai',
                      //suffixIcon:const Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
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
                      labelText: "Service",
                     // hintText: 'Chennai',
                      suffixIcon:const Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
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
                      labelText: "Delivery Date",
                     // hintText: 'Chennai',
                      suffixIcon:const Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
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
                      labelText: "Reference Links",
                      hintText: 'Paste Link',
                      //suffixIcon:const Image(image: AssetImage("assets/icons/Group 225.png")),
                      labelStyle: primaryFont.copyWith(color: primaryColor)),
                ),
              ),
              const SizedBox(height: 15,),
              Text(
                                              "Reference Files",
                                              style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const SizedBox(height: 10,),
              Container(
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
              const SizedBox(height: 15,),
              Container(
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
            Padding(
              padding: const EdgeInsets.only(right: 5,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:const [
                  Text("Max 100 Words"),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 36,
                      width: 122,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4), color: primaryColor),
                      alignment: Alignment.center,
                      child: Text(
                        "+ Add Projects",
                        style: primaryFont.copyWith(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      height: 36,
                      width: 149,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4), color: primaryColor),
                      alignment: Alignment.center,
                      child: Text(
                        "+ Add Sub Projects",
                        style: primaryFont.copyWith(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                _dialogBuilder(context);
              },
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
        ],
      ),
    ),
    );
  }
  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const SizedBox(
            child:  Image(
              height: 65,
              image: AssetImage("assets/images/Vector (22).png"))),
          content:const Text('Project Proposal has been Submitted!!',style: TextStyle(fontSize: 12),),
          actions: <Widget>[
           InkWell(
            onTap: (){
              Get.back();
            },
             child: Text("Yes",
                       style: primaryFont.copyWith(
                         color: primaryColor,
                          fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                     ),
           ),
                   const SizedBox(width: 20,),
          ],
          
        );
      },
    );
  }
}