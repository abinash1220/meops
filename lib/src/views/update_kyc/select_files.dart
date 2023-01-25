import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/views/intro_screens/intro_screen1.dart';
import 'package:meops/src/views/splash_view/Splash_screen.dart';

import '../../constant/app_font.dart';

class SelectFiles extends StatefulWidget {
  const SelectFiles({super.key});

  @override
  State<SelectFiles> createState() => _SelectFilesState();
}

class _SelectFilesState extends State<SelectFiles> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
           body: SingleChildScrollView(
             child: Column(
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
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                    height: 100,
                    width: size.width,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                       BoxShadow(
                        color: Color.fromARGB(255, 182, 180, 180),
                        blurRadius: 5.0
                       )
                      ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Links",
                                          style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                         Image(image: AssetImage("assets/icons/Vector (5).png"))
                                          
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 10),
                          child: Text("https://drive.google.com/file/\n"
                          "d/1q8f_x6ttJCkoVSDgsDchusxzga",
                                            style: primaryFont.copyWith(
                                              color: Colors.black,
                                              fontSize: 19,
                                             // fontWeight: FontWeight.bold,
                                              ),
                                            ),
                        ),
                      ],
                    ),
                   ),
                 ),
               
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 30),
                child: Text("Selected Files",
                                        style: primaryFont.copyWith(
                                          color: primaryColor,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          ),
                                        ),
              ),
              Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                    height: 60,
                    width: size.width,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                       BoxShadow(
                        color: Color.fromARGB(255, 182, 180, 180),
                        blurRadius: 5.0
                       )
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image(
                                height: 40,
                                width: 40,
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/Rectangle 58.png")),
                                const SizedBox(width: 15,),
                                Text("Img07.JPG",
                                        style: primaryFont.copyWith(
                                          color: Colors.black,
                                          fontSize: 18,
                                         // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Text("3.06 MB",
                                          style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 18,
                                           // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(width: 15,),
                                          Image(image: AssetImage("assets/icons/Vector (5).png"))
                            ],
                          ),
                        ),
                      ],
                    )
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                    height: 60,
                    width: size.width,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                       BoxShadow(
                        color: Color.fromARGB(255, 182, 180, 180),
                        blurRadius: 5.0
                       )
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image(
                                height: 40,
                                width: 40,
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/Rectangle 58.png")),
                                const SizedBox(width: 15,),
                                Text("Img07.JPG",
                                        style: primaryFont.copyWith(
                                          color: Colors.black,
                                          fontSize: 18,
                                         // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Text("17 MB",
                                          style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 18,
                                           // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(width: 15,),
                                          Image(image: AssetImage("assets/icons/Vector (5).png"))
                            ],
                          ),
                        ),
                      ],
                    )
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                    height: 60,
                    width: size.width,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                       BoxShadow(
                        color: Color.fromARGB(255, 182, 180, 180),
                        blurRadius: 5.0
                       )
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image(
                                height: 40,
                                width: 40,
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/Rectangle 58.png")),
                                const SizedBox(width: 15,),
                                Text("Work.PDF",
                                        style: primaryFont.copyWith(
                                          color: Colors.black,
                                          fontSize: 18,
                                         // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Text("2.06 MB",
                                          style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 18,
                                           // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(width: 15,),
                                          Image(image: AssetImage("assets/icons/Vector (5).png"))
                            ],
                          ),
                        ),
                      ],
                    )
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                    height: 60,
                    width: size.width,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                       BoxShadow(
                        color: Color.fromARGB(255, 182, 180, 180),
                        blurRadius: 5.0
                       )
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image(
                                height: 40,
                                width: 40,
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/Rectangle 58.png")),
                                const SizedBox(width: 15,),
                                Text("Img07.Gif",
                                        style: primaryFont.copyWith(
                                          color: Colors.black,
                                          fontSize: 18,
                                         // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Text("5.03 MB",
                                          style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 18,
                                           // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(width: 15,),
                                          Image(image: AssetImage("assets/icons/Vector (5).png"))
                            ],
                          ),
                        ),
                      ],
                    )
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                    height: 60,
                    width: size.width,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                       BoxShadow(
                        color: Color.fromARGB(255, 182, 180, 180),
                        blurRadius: 5.0
                       )
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image(
                                height: 40,
                                width: 40,
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/Rectangle 58.png")),
                                const SizedBox(width: 15,),
                                Text("Img07.JPG",
                                        style: primaryFont.copyWith(
                                          color: Colors.black,
                                          fontSize: 18,
                                         // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Text("3.06 MB",
                                          style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 18,
                                           // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(width: 15,),
                                          Image(image: AssetImage("assets/icons/Vector (5).png"))
                            ],
                          ),
                        ),
                      ],
                    )
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                    height: 60,
                    width: size.width,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                       BoxShadow(
                        color: Color.fromARGB(255, 182, 180, 180),
                        blurRadius: 5.0
                       )
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                             const Image(
                                height: 40,
                                width: 40,
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/Rectangle 58.png")),
                                const SizedBox(width: 15,),
                                Text("Img07.JPG",
                                        style: primaryFont.copyWith(
                                          color: Colors.black,
                                          fontSize: 18,
                                         // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Text("3.06 MB",
                                          style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 18,
                                           // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(width: 15,),
                                         const Image(image: AssetImage("assets/icons/Vector (5).png"))
                            ],
                          ),
                        ),
                      ],
                    )
                   ),
                 ),
               const SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  
                },
                child: Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15,top: 50),
                    child: Container(
                      height: 55,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 185, 183, 183)),
                      alignment: Alignment.center,
                      child: Text(
                        "+ Add More Files",
                        style: primaryFont.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Get.to(const IntroductionScreens());
                },
                child: Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15,bottom: 20),
                    child: Container(
                      height: 55,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), color: primaryColor),
                      alignment: Alignment.center,
                      child: Text(
                        "Upload & Continue",
                        style: primaryFont.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
              ),
             ]),
           ),
            
           );
    
  }
}