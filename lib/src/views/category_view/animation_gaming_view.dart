import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/category_view/profile_sts_view.dart';

class AnimationGaming extends StatefulWidget {
  const AnimationGaming({super.key});

  @override
  State<AnimationGaming> createState() => _AnimationGamingState();
}

class _AnimationGamingState extends State<AnimationGaming> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
                height: 80,
                decoration:  BoxDecoration(
                    color: primaryColor,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25,left: 20),
                        child: Icon(Icons.arrow_back,color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Animation & Gaming",
                           style: primaryFont.copyWith(
                           color: primaryColor,
                           fontSize: 24,
                           fontWeight: FontWeight.bold,
                        ),
                     ),
                     Image(image: AssetImage("assets/icons/Group 664.png"))
                  ],
                ),
              ),
              Container(
                height: size.height * 0.80,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: InkWell(
                        onTap: (){
                          Get.to(const ProfileStsView());
                        },
                        child: Container(
                          width: size.width,
                          height: 164,
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
                          child:Row(
                            children: [
                              Stack(
                                children: [
                                  Image(image: AssetImage("assets/images/img1.png")),
                                  Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: Center(
                                        child: Image(
                                          image: AssetImage("assets/icons/Vector (7).png")),
                                      ),
                                    ),
                                  ),
                                  ]
                                  ),
                                  
                              Padding(
                                padding: const EdgeInsets.only(left: 15,top: 15,right: 10,bottom: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image(image: AssetImage("assets/images/prf2.png")),
                                        const SizedBox(width: 5,),
                                        Text("Madhu",
                                          style: primaryFont.copyWith(
                                          color: primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                         ),
                                      ),
                                      const SizedBox(width: 5,),
                                      Image(image: AssetImage("assets/icons/Vector (6).png")),
                                      const SizedBox(width: 35,),
                                       Icon(Icons.star,color: Colors.yellow,),
                                        Text("4.0(46)",
                                          style: primaryFont.copyWith(
                                          color: primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                         ),
                                      ),
                                      ],
                                    ),
                                    const SizedBox(height: 15,),
                                   Row(
                                     children: [
                                       Text("Category",
                                              style: primaryFont.copyWith(
                                              color: primaryColor,
                                              fontSize: 14,
                                              //fontWeight: FontWeight.bold,
                                             ),
                                          ),
                                          const SizedBox(width: 35,),
                                           Text("Designer",
                                              style: primaryFont.copyWith(
                                              color: Colors.black,
                                              fontSize: 14,
                                              //fontWeight: FontWeight.bold,
                                             ),
                                          ),
                                     ],
                                   ),
                                    const SizedBox(height: 10,),
                                   Row(
                                     children: [
                                       Text("Location",
                                              style: primaryFont.copyWith(
                                              color: primaryColor,
                                              fontSize: 14,
                                             // fontWeight: FontWeight.bold,
                                             ),
                                          ),
                                          const SizedBox(width: 35,),
                                           Text("Chennai",
                                              style: primaryFont.copyWith(
                                              color: Colors.black,
                                              fontSize: 14,
                                             // fontWeight: FontWeight.bold,
                                             ),
                                          ),
                                     ],
                                   ),
                                    const SizedBox(height: 10,),
                                   Row(
                                     children: [
                                       Text("Experience",
                                              style: primaryFont.copyWith(
                                              color: primaryColor,
                                              fontSize: 14,
                                             // fontWeight: FontWeight.bold,
                                             ),
                                          ),
                                          const SizedBox(width: 22,),
                                           Text("Intermediate",
                                              style: primaryFont.copyWith(
                                              color: Colors.black,
                                              fontSize: 14,
                                             // fontWeight: FontWeight.bold,
                                             ),
                                          ),
                                     ],
                                   ),
                                    const SizedBox(height: 10,),
                                   Row(
                                     children: [
                                       Text("Avg Rate",
                                              style: primaryFont.copyWith(
                                              color: primaryColor,
                                              fontSize: 14,
                                             // fontWeight: FontWeight.bold,
                                             ),
                                          ),
                                          const SizedBox(width: 35,),
                                           Text("₹ 1400/Day",
                                              style: primaryFont.copyWith(
                                              color: Colors.black,
                                              fontSize: 14,
                                             // fontWeight: FontWeight.bold,
                                             ),
                                          ),
                                     ],
                                   ),
                                    
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
                      child: Container(
                        width: size.width,
                        height: 164,
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
                        child:Row(
                          children: [
                            Stack(
                              children: [
                                Image(image: AssetImage("assets/images/img2.png")),
                                Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Center(
                                      child: Image(
                                        image: AssetImage("assets/icons/Vector (7).png")),
                                    ),
                                  ),
                                ),
                                ]
                                ),
                                
                            Padding(
                              padding: const EdgeInsets.only(left: 15,top: 15,right: 10,bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/images/prf.png")),
                                      const SizedBox(width: 5,),
                                      Text("Kissan",
                                        style: primaryFont.copyWith(
                                        color: primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                       ),
                                    ),
                                    const SizedBox(width: 5,),
                                    Image(image: AssetImage("assets/icons/Vector (6).png")),
                                    const SizedBox(width: 35,),
                                     Icon(Icons.star,color: Colors.yellow,),
                                      Text("4.0(46)",
                                        style: primaryFont.copyWith(
                                        color: primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                       ),
                                    ),
                                    ],
                                  ),
                                  const SizedBox(height: 15,),
                                 Row(
                                   children: [
                                     Text("Category",
                                            style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 14,
                                            //fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                        const SizedBox(width: 35,),
                                         Text("Videographer",
                                            style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                            //fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                   ],
                                 ),
                                  const SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Text("Location",
                                            style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                        const SizedBox(width: 35,),
                                         Text("Chennai",
                                            style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                   ],
                                 ),
                                  const SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Text("Experience",
                                            style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                        const SizedBox(width: 22,),
                                         Text("Intermediate",
                                            style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                   ],
                                 ),
                                  const SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Text("Avg Rate",
                                            style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                        const SizedBox(width: 35,),
                                         Text("₹ 400/Hour",
                                            style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                   ],
                                 ),
                                  
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
                      child: Container(
                        width: size.width,
                        height: 164,
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
                        child:Row(
                          children: [
                            Stack(
                              children: [
                                Image(image: AssetImage("assets/images/img1.png")),
                                Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Center(
                                      child: Image(
                                        image: AssetImage("assets/icons/Vector (7).png")),
                                    ),
                                  ),
                                ),
                                ]
                                ),
                                
                            Padding(
                              padding: const EdgeInsets.only(left: 15,top: 15,right: 10,bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/images/prf1.png")),
                                      const SizedBox(width: 5,),
                                      Text("Madhu",
                                        style: primaryFont.copyWith(
                                        color: primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                       ),
                                    ),
                                    const SizedBox(width: 5,),
                                    Image(image: AssetImage("assets/icons/Vector (6).png")),
                                    const SizedBox(width: 35,),
                                     Icon(Icons.star,color: Colors.yellow,),
                                      Text("4.0(46)",
                                        style: primaryFont.copyWith(
                                        color: primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                       ),
                                    ),
                                    ],
                                  ),
                                  const SizedBox(height: 15,),
                                 Row(
                                   children: [
                                     Text("Category",
                                            style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 14,
                                            //fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                        const SizedBox(width: 35,),
                                         Text("Events",
                                            style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                            //fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                   ],
                                 ),
                                  const SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Text("Location",
                                            style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                        const SizedBox(width: 35,),
                                         Text("Chennai",
                                            style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                   ],
                                 ),
                                  const SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Text("Experience",
                                            style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                        const SizedBox(width: 22,),
                                         Text("Intermediate",
                                            style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                   ],
                                 ),
                                  const SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Text("Avg Rate",
                                            style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                        const SizedBox(width: 35,),
                                         Text("Not Applicable",
                                            style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                   ],
                                 ),
                                  
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15,top: 15),
                      child: Container(
                        width: size.width,
                        height: 164,
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
                        child:Row(
                          children: [
                            Stack(
                              children: [
                                Image(image: AssetImage("assets/images/img2.png")),
                                Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Center(
                                      child: Image(
                                        image: AssetImage("assets/icons/Vector (7).png")),
                                    ),
                                  ),
                                ),
                                ]
                                ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15,top: 15,right: 10,bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage("assets/images/prf3.png")),
                                      const SizedBox(width: 5,),
                                      Text("Madhu",
                                        style: primaryFont.copyWith(
                                        color: primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                       ),
                                    ),
                                    const SizedBox(width: 5,),
                                    Image(image: AssetImage("assets/icons/Vector (6).png")),
                                    const SizedBox(width: 35,),
                                     Icon(Icons.star,color: Colors.yellow,),
                                      Text("4.0(46)",
                                        style: primaryFont.copyWith(
                                        color: primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                       ),
                                    ),
                                    ],
                                  ),
                                  const SizedBox(height: 15,),
                                 Row(
                                   children: [
                                     Text("Category",
                                            style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 14,
                                            //fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                        const SizedBox(width: 35,),
                                         Text("Designer",
                                            style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                            //fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                   ],
                                 ),
                                  const SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Text("Location",
                                            style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                        const SizedBox(width: 35,),
                                         Text("Chennai",
                                            style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                   ],
                                 ),
                                  const SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Text("Experience",
                                            style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                        const SizedBox(width: 22,),
                                         Text("Intermediate",
                                            style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                   ],
                                 ),
                                  const SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Text("Avg Rate",
                                            style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                        const SizedBox(width: 35,),
                                         Text("₹ 1400/Day",
                                            style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                           // fontWeight: FontWeight.bold,
                                           ),
                                        ),
                                   ],
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
              ),
        ],
      ),
    );
  }
}