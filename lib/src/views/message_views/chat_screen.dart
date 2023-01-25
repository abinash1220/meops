import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              Get.back();
                            },
                            child:Icon(Icons.arrow_back,color: Colors.white,),
                          ),
                          const SizedBox(width: 15,),
                          Image(height: 33,
                            image: AssetImage("assets/images/Group 1159.png")),
                            const SizedBox(width: 10,),
                            Text("Katie",
                                       style: primaryFont.copyWith(
                                       color: Colors.white,
                                       fontSize: 16,
                                       fontWeight: FontWeight.w500,
                                    ),
                                 ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Image(image: AssetImage("assets/icons/Group 407.png"))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15,right: 15,left: 15,bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            height: 21,
                            width: 62,
                            decoration: BoxDecoration(
                              color:const Color(0xffDECCFF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child:Text("22 Aug 2022",
                                       style: primaryFont.copyWith(
                                       color: primaryColor,
                                       fontSize: 8,
                                       fontWeight: FontWeight.w500,
                                    ),
                                 ) ,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Container(
                          height: 47,
                          width: 241,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 125),
                              child: Text("Hi ,This is clinton",
                              textAlign: TextAlign.left,
                                         style: primaryFont.copyWith(
                                         color: Colors.white,
                                         fontSize: 12,
                                         fontWeight: FontWeight.w400,
                                      ),
                                   ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Container(
                          height: 53,
                          width: 171,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("what about the payment process?",
                              textAlign: TextAlign.left,
                                         style: primaryFont.copyWith(
                                         color: Colors.white,
                                         fontSize: 12,
                                         fontWeight: FontWeight.w400,
                                      ),
                                   ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("2:45 pm",
                                         style: primaryFont.copyWith(
                                         color: Color(0xff828282),
                                         fontSize: 8,
                                         fontWeight: FontWeight.w500,
                                      ),
                                   ),
                        ) ,
                        const SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 210),
                          child: Container(
                            height: 43,
                            width: 145,
                            decoration: BoxDecoration(
                              color:Color(0xffDECCFF) ,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text("Half payment recieved",
                                           style: primaryFont.copyWith(
                                           color: Colors.black,
                                           fontSize: 12,
                                           fontWeight: FontWeight.w400,
                                        ),
                                     ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 280),
                          child: Text("2:45 pm",textAlign: TextAlign.end,
                                         style: primaryFont.copyWith(
                                         color: Color(0xff828282),
                                         fontSize: 8,
                                         fontWeight: FontWeight.w500,
                                      ),
                                   ),
                        ) ,
                        const SizedBox(height: 15,),
                        Container(
                          height: 43,
                          width: 145,
                          decoration: BoxDecoration(
                            color:primaryColor ,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text("Thanks, clinton",
                                         style: primaryFont.copyWith(
                                         color: Colors.white,
                                         fontSize: 12,
                                         fontWeight: FontWeight.w400,
                                      ),
                                   ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text("2:45 pm",textAlign: TextAlign.end,
                                       style: primaryFont.copyWith(
                                       color: Color(0xff828282),
                                       fontSize: 8,
                                       fontWeight: FontWeight.w500,
                                    ),
                                 ) ,
                      ],
                    ),
                  ),
                   Column(
                    children: [
                      Container(
                        height: 286,
                        width: size.width,
                        decoration:const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                           boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 202, 201, 201),
                          blurRadius: 5.0
                        ),
                      ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Text("Choose Your Message",
                                               style: primaryFont.copyWith(
                                               color: primaryColor,
                                               fontSize: 16,
                                               fontWeight: FontWeight.w500,
                                            ),
                                         ),
                                         const SizedBox(width: 5,),
                                        const Image(image: AssetImage("assets/icons/Vector (14).png"))
                                ],
                              ),
                             Container(
                              height: 32,
                              width: size.width,
                              decoration: BoxDecoration(
                                color: const Color(0xffDECCFF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child:Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("Not recieved ",
                                                     style: primaryFont.copyWith(
                                                     color: Colors.black,
                                                     fontSize: 12,
                                                     fontWeight: FontWeight.w500,
                                                  ),
                                               ),
                                    ),
                                  ],
                                ),
                              ),
                             ),
                             
                             Container(
                              height: 32,
                              width: size.width,
                              decoration: BoxDecoration(
                                color: const Color(0xffDECCFF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child:Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("Not yet recieved ",
                                                     style: primaryFont.copyWith(
                                                     color: Colors.black,
                                                     fontSize: 12,
                                                     fontWeight: FontWeight.w500,
                                                  ),
                                               ),
                                    ),
                                  ],
                                ),
                              ),
                             ),
                             Container(
                              height: 32,
                              width: size.width,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child:Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("Half payment recieved ",
                                                     style: primaryFont.copyWith(
                                                     color: Colors.white,
                                                     fontSize: 12,
                                                     fontWeight: FontWeight.w500,
                                                  ),
                                               ),
                                    ),
                                  ],
                                ),
                              ),
                             ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Container(
                                  height: 32,
                                  width: 88,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                                      Text("Send",
                                                         style: primaryFont.copyWith(
                                                         color: Colors.white,
                                                         fontSize: 14,
                                                         fontWeight: FontWeight.w500,
                                                      ),
                                                   ),
                                                   const SizedBox(width: 5,),
                                                   const Image(image: AssetImage("assets/icons/Vector (15).png"))
                                      ],
                                    ),
                                  ),
                                 ),
                               ],
                             ),
                            ],
                          ),
                        ),
                      ),
                    ],
                   ),
                        
                      ],
                    ),
                  
                
              );
  
  }
}