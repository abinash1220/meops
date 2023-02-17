import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
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
                       Text("Notification",
                             style: primaryFont.copyWith(
                             color: Colors.white,
                             fontSize: 24,
                             fontWeight: FontWeight.w600,
                          ),
                       ),
                    ],
                  ),
                ),
              ),
      ),
           body: Column(
            children: [
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Container(
                  height: 80,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 211, 210, 210),
                        blurRadius: 5.0
                      ),
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage("assets/icons/Group 894.png")),
                            const SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Kesavan",
                                 style: primaryFont.copyWith(
                                 color: primaryColor,
                                 fontSize: 16,
                                 fontWeight: FontWeight.w600,
                          ),
                       ),
                       const SizedBox(height: 10,),
                       Text("Negotiation initiated for project “Diwali\nGraphics Work” by Manju",
                                 style: primaryFont.copyWith(
                                 color: Colors.black,
                                 fontSize: 14,
                                 fontWeight: FontWeight.w500,
                          ),
                       ),
                              ],
                            ),
                          ],
                        ),
                         Column(
                           children: [
                             Row(
                              children: [
                       Text("Sep 23",
                                 style: primaryFont.copyWith(
                                 color: Colors.grey[300],
                                 fontSize: 12,
                                 fontWeight: FontWeight.w600,
                              ),
                       ),
                              ],
                        ),
                           ],
                         ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
                child: Container(
                  height: 80,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 211, 210, 210),
                        blurRadius: 5.0
                      ),
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage("assets/icons/Group 894.png")),
                            const SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mahesh",
                                 style: primaryFont.copyWith(
                                 color: primaryColor,
                                 fontSize: 16,
                                 fontWeight: FontWeight.w600,
                          ),
                       ),
                       const SizedBox(height: 10,),
                       Text("Negotiation initiated for project “Diwali\nGraphics Work” by Manju",
                                 style: primaryFont.copyWith(
                                 color: Colors.black,
                                 fontSize: 14,
                                 fontWeight: FontWeight.w500,
                          ),
                       ),
                              ],
                            ),
                          ],
                        ),
                         Column(
                           children: [
                             Row(
                              children: [
                       Text("Sep 23",
                                 style: primaryFont.copyWith(
                                 color: Colors.grey[300],
                                 fontSize: 12,
                                 fontWeight: FontWeight.w600,
                              ),
                       ),
                              ],
                        ),
                           ],
                         ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
                child: Container(
                  height: 80,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 211, 210, 210),
                        blurRadius: 5.0
                      ),
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage("assets/icons/Group 894.png")),
                            const SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Vikram",
                                 style: primaryFont.copyWith(
                                 color: primaryColor,
                                 fontSize: 16,
                                 fontWeight: FontWeight.w600,
                          ),
                       ),
                       const SizedBox(height: 10,),
                       Text("Negotiation initiated for project “Diwali\nGraphics Work” by Manju",
                                 style: primaryFont.copyWith(
                                 color: Colors.black,
                                 fontSize: 14,
                                 fontWeight: FontWeight.w500,
                          ),
                       ),
                              ],
                            ),
                          ],
                        ),
                         Column(
                           children: [
                             Row(
                              children: [
                       Text("Sep 23",
                                 style: primaryFont.copyWith(
                                 color: Colors.grey[300],
                                 fontSize: 12,
                                 fontWeight: FontWeight.w600,
                              ),
                       ),
                              ],
                        ),
                           ],
                         ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
           ),
    );
  }
}