import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:meops/src/client/client_views/client_profile/client_avatar.dart';
import 'package:meops/src/client/client_views/client_profile/client_bio_edit_screen.dart';
import 'package:meops/src/client/client_views/client_profile/transaction_screen.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/favorite_screen_view/favorites_view.dart';
import 'package:meops/src/views/profile_views/client_bio_edit_screen.dart';
import 'package:meops/src/views/profile_views/settings_screen.dart';

class ClientProfilePage extends StatefulWidget {
  const ClientProfilePage({super.key});

  @override
  State<ClientProfilePage> createState() => _ClientProfilePageState();
}

class _ClientProfilePageState extends State<ClientProfilePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
        preferredSize:const Size.fromHeight(160),
        child: Container(
                height: 160,
                decoration:  BoxDecoration(
                    color: primaryColor,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 45,left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child:const Icon(Icons.arrow_back,color: Colors.white,),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                   const Image(image: AssetImage("assets/images/Group 1171.png")),
                                   Padding(
                                     padding:const EdgeInsets.only(top: 40,left: 50),
                                     child: InkWell(
                                      onTap: (){
                                        Get.to(const ClientAvatharScreen());
                                      },
                                      child:const Image(image: AssetImage("assets/images/Group 1056.png"))),
                                   ),
                                   ]),
                              const SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("Cathrein",
                             style: primaryFont.copyWith(
                             color: Colors.white,
                             fontSize: 20,
                             fontWeight: FontWeight.w500,
                          ),
                       ),
                       const SizedBox(width: 2,),
                       const Image(image: AssetImage("assets/icons/Vector (6).png",),color: Colors.white,)
                                    ],
                                  ),
                        Text("Banglore, India",
                             style: primaryFont.copyWith(
                             color: Colors.white,
                             fontSize: 16,
                             fontWeight: FontWeight.w400,
                          ),
                       ),
                                ],
                              ),
                            ]
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,bottom: 15),
                  child: Row(
                    children: [
                        InkWell(
                          onTap: (){
                             Get.to(const SettingsScreen());
                          },
                          child:const Image(image: AssetImage("assets/icons/Group (3).png"))),
                      //   SizedBox(width: 10,),
                      //  Image(image: AssetImage("assets/icons/Vector (10).png"),color: Colors.white,),
                    ],
                  ),
                ),
                        ],
                      ),
                    ],
                  ),
              ),),
    ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
          child: Container(
            height: 250,
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
                        padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                      const Image(image: AssetImage("assets/icons/Group 431.png")),
                                      Text("Bio",
                                 style: primaryFont.copyWith(
                                 color: primaryColor,
                                 fontSize: 20,
                                 fontWeight: FontWeight.w500,
                          ),
                       ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: InkWell(
                                    onTap: (){
                                      Get.to(const ClientBioEditPage());
                                    },
                                    child: Row(
                                      children:const [
                                             Image(image: AssetImage("assets/images/Group 938.png")),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                           Padding(
                             padding: const EdgeInsets.only(left: 20),
                             child: Row(
                               children: [
                                 Text("Profession            ",
                                   style: primaryFont.copyWith(
                                   color: primaryColor,
                                   fontSize: 14,
                                   fontWeight: FontWeight.w400,
                          ),
                       ),
                       Text(":  Software Engineer",
                                   style: primaryFont.copyWith(
                                   color: Colors.black,
                                   fontSize: 14,
                                   fontWeight: FontWeight.w400,
                          ),
                       ),
                               ],
                             ),
                           ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Row(
                           children: [
                             Text("Experience            ",
                                   style: primaryFont.copyWith(
                                   color: primaryColor,
                                   fontSize: 14,
                                   fontWeight: FontWeight.w400,
                                ),
                             ),
                             Text(":  4 Years",
                                   style: primaryFont.copyWith(
                                   color: Colors.black,
                                   fontSize: 14,
                                   fontWeight: FontWeight.w400,
                          ),
                       ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Row(
                           children: [
                             Text("Education              ",
                                   style: primaryFont.copyWith(
                                   color: primaryColor,
                                   fontSize: 14,
                                   fontWeight: FontWeight.w400,
                                ),
                             ),
                             Text(":  BE Computer Science",
                                   style: primaryFont.copyWith(
                                   color: Colors.black,
                                   fontSize: 14,
                                   fontWeight: FontWeight.w400,
                          ),
                       ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Row(
                           children: [
                             Text("Date Of Birth         ",
                                   style: primaryFont.copyWith(
                                   color: primaryColor,
                                   fontSize: 14,
                                   fontWeight: FontWeight.w400,
                                ),
                             ),
                             Text(":  27/08/1995",
                                   style: primaryFont.copyWith(
                                   color: Colors.black,
                                   fontSize: 14,
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
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 50,
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
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(const TransactionScreen());
                          },
                          child: Row(
                            children: [
                              const Image(image: AssetImage("assets/icons/Group 719.png")),
                                  const SizedBox(width: 10,),
                                  Text("Payments",
                                              style: primaryFont.copyWith(
                                              color: primaryColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                             ),
                                          ),
                            ],
                          ),
                        ),
                        Row(
                          children:const [
                             Image(image: AssetImage("assets/icons/Group 628.png")),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
                child: Container(
                  height: 50,
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
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(const FavoritesView());
                          },
                          child: Row(
                            children: [
                              const Image(image: AssetImage("assets/icons/Vector (10).png")),
                                  const SizedBox(width: 10,),
                                  Text("Favourites",
                                              style: primaryFont.copyWith(
                                              color: primaryColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                             ),
                                          ),
                            ],
                          ),
                        ),
                        Row(
                          children:const [
                             Image(image: AssetImage("assets/icons/Group 628.png")),
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