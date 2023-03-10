import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/profile_views/reviews_customer_views.dart';

class ViewRewardsScreen extends StatefulWidget {
  const ViewRewardsScreen({super.key});

  @override
  State<ViewRewardsScreen> createState() => _ViewRewardsScreenState();
}

class _ViewRewardsScreenState extends State<ViewRewardsScreen> {

  bool ishide = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
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
                        child:const Icon(Icons.arrow_back,color: Colors.white,),
                      ),
                      const SizedBox(width: 15,),
                       Text("Reviews",
                             style: primaryFont.copyWith(
                             color: Colors.white,
                             fontSize: 24,
                             fontWeight: FontWeight.w600,
                          ),
                       ),
                    ],
                  ),
                ),
              ),),
              body: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                    child: Container(
                      height: 180,
                      width: size.width,
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
                        padding: const EdgeInsets.only(top: 10,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15,right:15,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                     InkWell(
                                      onTap: (){
                                        Get.to(const ReviewsCustomerViews());
                                      },
                                      child: const Image(image: AssetImage("assets/images/Group 1172.png"))),
                                      const SizedBox(width: 10,),
                                      Column(
                                        children: [
                                          Text("Loren",
                             style: primaryFont.copyWith(
                             color: primaryColor,
                             fontSize: 16,
                             fontWeight: FontWeight.w600,
                          ),
                       ),
                       Text("April 23",
                             style: primaryFont.copyWith(
                             color: Colors.grey[300],
                             fontSize: 14,
                             fontWeight: FontWeight.w400,
                          ),
                       ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children:const [
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15,top: 5),
                              child: Text("""There???s no other program that walks you through\nexactly what you need to know to start an online\nstore fast, written by someone who has built\nseveral 7-figure ecommerce businesses from\nscratch.""",
                               style: primaryFont.copyWith(
                               color: Colors.black,
                               fontSize: 14,
                               fontWeight: FontWeight.w400,
                          ),
                       ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5,right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if(ishide == false)
                                 InkWell(
                                  onTap: (){
                                    setState(() {
                                      ishide = true;
                                    });
                                  },
                                   child: Row(
                                     children: [
                                       const Image(image: AssetImage("assets/images/Vector (21).png")),
                                       const SizedBox(width: 5,),
                                   Text("Hide",
                                                              style: primaryFont.copyWith(
                                                              color: Colors.black,
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.w400,
                                                           ),
                                                        ),
                                     ],
                                   ),
                                 ),
                                 if(ishide == true)
                                 InkWell(
                                  onTap: (){
                                    setState(() {
                                      ishide = false;
                                    });
                                  },
                                   child: Row(
                                    children: [
                                      const Image(image: AssetImage("assets/images/Group 1096.png")),
                                   const SizedBox(width: 5,),
                                    Text("Hided",
                                                              style: primaryFont.copyWith(
                                                              color: Colors.black,
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.w400,
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
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                    child: Container(
                      height: 180,
                      width: size.width,
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
                        padding: const EdgeInsets.only(top: 10,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15,right:15,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                     const Image(image: AssetImage("assets/images/Group 1172.png")),
                                      const SizedBox(width: 10,),
                                      Column(
                                        children: [
                                          Text("Loren",
                             style: primaryFont.copyWith(
                             color: primaryColor,
                             fontSize: 16,
                             fontWeight: FontWeight.w600,
                          ),
                       ),
                       Text("April 23",
                             style: primaryFont.copyWith(
                             color: Colors.grey[300],
                             fontSize: 14,
                             fontWeight: FontWeight.w400,
                          ),
                       ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children:const [
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15,top: 5),
                              child: Text("""There???s no other program that walks you through\nexactly what you need to know to start an online\nstore fast, written by someone who has built\nseveral 7-figure ecommerce businesses from\nscratch.""",
                               style: primaryFont.copyWith(
                               color: Colors.black,
                               fontSize: 14,
                               fontWeight: FontWeight.w400,
                          ),
                       ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5,right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                 const Icon(Icons.remove_red_eye_outlined,size: 18,),
                                 const SizedBox(width: 5,),
                                  Text("Hided",
                             style: primaryFont.copyWith(
                             color: Colors.black,
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                          ),
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
                    padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                    child: Container(
                      height: 180,
                      width: size.width,
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
                        padding: const EdgeInsets.only(top: 10,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15,right:15,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                     const Image(image: AssetImage("assets/images/Group 1172.png")),
                                      const SizedBox(width: 10,),
                                      Column(
                                        children: [
                                          Text("Loren",
                             style: primaryFont.copyWith(
                             color: primaryColor,
                             fontSize: 16,
                             fontWeight: FontWeight.w600,
                          ),
                       ),
                       Text("April 23",
                             style: primaryFont.copyWith(
                             color: Colors.grey[300],
                             fontSize: 14,
                             fontWeight: FontWeight.w400,
                          ),
                       ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children:const [
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15,top: 5),
                              child: Text("""There???s no other program that walks you through\nexactly what you need to know to start an online\nstore fast, written by someone who has built\nseveral 7-figure ecommerce businesses from\nscratch.""",
                               style: primaryFont.copyWith(
                               color: Colors.black,
                               fontSize: 14,
                               fontWeight: FontWeight.w400,
                          ),
                       ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5,right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                 const Icon(Icons.remove_red_eye_outlined,size: 18,),
                                 const SizedBox(width: 5,),
                                  Text("Hided",
                             style: primaryFont.copyWith(
                             color: Colors.black,
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                          ),
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
                    padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                    child: Container(
                      height: 180,
                      width: size.width,
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
                        padding: const EdgeInsets.only(top: 10,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15,right:15,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                     const Image(image: AssetImage("assets/images/Group 1172.png")),
                                      const SizedBox(width: 10,),
                                      Column(
                                        children: [
                                          Text("Loren",
                             style: primaryFont.copyWith(
                             color: primaryColor,
                             fontSize: 16,
                             fontWeight: FontWeight.w600,
                          ),
                       ),
                       Text("April 23",
                             style: primaryFont.copyWith(
                             color: Colors.grey[300],
                             fontSize: 14,
                             fontWeight: FontWeight.w400,
                          ),
                       ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children:const [
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                      Image(image: AssetImage("assets/icons/Star.png")),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15,top: 5),
                              child: Text("""There???s no other program that walks you through\nexactly what you need to know to start an online\nstore fast, written by someone who has built\nseveral 7-figure ecommerce businesses from\nscratch.""",
                               style: primaryFont.copyWith(
                               color: Colors.black,
                               fontSize: 14,
                               fontWeight: FontWeight.w400,
                          ),
                       ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5,right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                 const Icon(Icons.remove_red_eye_outlined,size: 18,),
                                 const SizedBox(width: 5,),
                                  Text("Hided",
                             style: primaryFont.copyWith(
                             color: Colors.black,
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                          ),
                       ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,)
                ],
              ),
    );
  }
}