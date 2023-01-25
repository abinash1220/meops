import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/message_views/chat_screen.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,top: 15,right: 15),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                color: Colors.grey.withOpacity(0.5))
                          ]),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Icon(
                              Icons.search,
                              color: primaryColor,
                            ),
                          ),
                          const Expanded(
                            child: TextField(
                              decoration:
                                  InputDecoration.collapsed(hintText: "Search"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Text("Messages",
                                     style: primaryFont.copyWith(
                                     color: primaryColor,
                                     fontSize: 24,
                                     fontWeight: FontWeight.w600,
                                  ),
                               ),
                ],
              ),
              const SizedBox(height: 10,),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      Get.to(ChatScreen());
                    },
                    child: Container(
                      width: size.width,
                      height: 95,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow:const [
                        BoxShadow(
                          color: Color.fromARGB(255, 202, 201, 201),
                          blurRadius: 5.0
                        ),
                      ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                               const Image(image: AssetImage("assets/images/Group 1158.png")),
                               const SizedBox(width: 10,),
                               Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Katie",
                                           style: primaryFont.copyWith(
                                           color: Colors.black,
                                           fontSize: 16,
                                           fontWeight: FontWeight.w500,
                                        ),
                                     ),
                                     const SizedBox(height: 5,),
                                     Text("Cool, Will let you know ASAP!",
                                       style: primaryFont.copyWith(
                                       color:const Color(0xffbac5D6066),
                                       fontSize: 14,
                                       fontWeight: FontWeight.w400,
                                    ),
                                 ),
                                 ],
                               ),
                            ],
                          ),
                        ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: size.width,
                    height: 95,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                      BoxShadow(
                        color: Color.fromARGB(255, 202, 201, 201),
                        blurRadius: 5.0
                      ),
                    ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                             const Image(image: AssetImage("assets/images/Group 1159.png")),
                             const SizedBox(width: 10,),
                             Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Katie",
                                         style: primaryFont.copyWith(
                                         color: Colors.black,
                                         fontSize: 16,
                                         fontWeight: FontWeight.w500,
                                      ),
                                   ),
                                   const SizedBox(height: 5,),
                                   Text("Cool, Will let you know ASAP!",
                                     style: primaryFont.copyWith(
                                     color:const Color(0xffbac5D6066),
                                     fontSize: 14,
                                     fontWeight: FontWeight.w400,
                                  ),
                               ),
                               ],
                             ),
                          ],
                        ),
                      ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: size.width,
                    height: 95,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                      BoxShadow(
                        color: Color.fromARGB(255, 202, 201, 201),
                        blurRadius: 5.0
                      ),
                    ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                             const Image(image: AssetImage("assets/images/Group 1160.png")),
                             const SizedBox(width: 10,),
                             Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Katie",
                                         style: primaryFont.copyWith(
                                         color: Colors.black,
                                         fontSize: 16,
                                         fontWeight: FontWeight.w500,
                                      ),
                                   ),
                                   const SizedBox(height: 5,),
                                   Text("Cool, Will let you know ASAP!",
                                     style: primaryFont.copyWith(
                                     color:const Color(0xffbac5D6066),
                                     fontSize: 14,
                                     fontWeight: FontWeight.w400,
                                  ),
                               ),
                               ],
                             ),
                          ],
                        ),
                      ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: size.width,
                    height: 95,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                      BoxShadow(
                        color: Color.fromARGB(255, 202, 201, 201),
                        blurRadius: 5.0
                      ),
                    ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                             const Image(image: AssetImage("assets/images/Group 1157.png")),
                             const SizedBox(width: 10,),
                             Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Katie",
                                         style: primaryFont.copyWith(
                                         color: Colors.black,
                                         fontSize: 16,
                                         fontWeight: FontWeight.w500,
                                      ),
                                   ),
                                   const SizedBox(height: 5,),
                                   Text("Cool, Will let you know ASAP!",
                                     style: primaryFont.copyWith(
                                     color:const Color(0xffbac5D6066),
                                     fontSize: 14,
                                     fontWeight: FontWeight.w400,
                                  ),
                               ),
                               ],
                             ),
                          ],
                        ),
                      ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: size.width,
                    height: 95,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                      BoxShadow(
                        color: Color.fromARGB(255, 202, 201, 201),
                        blurRadius: 5.0
                      ),
                    ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                             const Image(image: AssetImage("assets/images/Group 1158.png")),
                             const SizedBox(width: 10,),
                             Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Katie",
                                         style: primaryFont.copyWith(
                                         color: Colors.black,
                                         fontSize: 16,
                                         fontWeight: FontWeight.w500,
                                      ),
                                   ),
                                   const SizedBox(height: 5,),
                                   Text("Cool, Will let you know ASAP!",
                                     style: primaryFont.copyWith(
                                     color:const Color(0xffbac5D6066),
                                     fontSize: 14,
                                     fontWeight: FontWeight.w400,
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
        ),
      ),
    );
  }
}