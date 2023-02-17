import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/views/splash_view/Splash_screen.dart';

import '../../constant/app_font.dart';

class SelectFiles extends StatefulWidget {
  const SelectFiles({super.key});

  @override
  State<SelectFiles> createState() => _SelectFilesState();
}

class _SelectFilesState extends State<SelectFiles> {

 bool isdelete = true;
 bool isdelete1 = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(150),
        child: Container(
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
           body: SingleChildScrollView(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                    height: 76,
                    width: size.width,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                       BoxShadow(
                        color: Color.fromARGB(255, 216, 214, 214),
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
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                         const Image(image: AssetImage("assets/icons/Vector (5).png"))
                                          
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 10),
                          child: Text("https://drive.google.com/file/\n"
                          "d/1q8f_x6ttJCkoVSDgsDchusxzga",
                                            style: primaryFont.copyWith(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
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
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          ),
                                        ),
              ),
              if(isdelete == true)
              Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                    height: 46,
                    width: size.width,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                       BoxShadow(
                        color: Color.fromARGB(255, 216, 214, 214),
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
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/Rectangle 58.png")),
                                const SizedBox(width: 15,),
                                Text("Img07.JPG",
                                        style: primaryFont.copyWith(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
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
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          const SizedBox(width: 15,),
                                          InkWell(
                                          onTap: (){
                                            setState(() {
                                              isdelete = false;
                                            });
                                          },
                                          child:const Image(image: AssetImage("assets/icons/Vector (5).png")))
                            ],
                          ),
                        ),
                      ],
                    )
                   ),
                 ),
                 if(isdelete == true)
                 Padding(
                   padding: const EdgeInsets.only(top: 10,right: 20),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text("More than 2mb",
                                                style: primaryFont.copyWith(
                                                  color: const Color(0xffED4569),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                    height: 46,
                    width: size.width,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                       BoxShadow(
                        color: Color.fromARGB(255, 216, 214, 214),
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
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/Rectangle 58.png")),
                                const SizedBox(width: 15,),
                                Text("Img07.JPG",
                                        style: primaryFont.copyWith(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
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
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
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
                 Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                    height: 46,
                    width: size.width,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                       BoxShadow(
                        color: Color.fromARGB(255, 216, 214, 214),
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
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/Rectangle 58.png")),
                                const SizedBox(width: 15,),
                                Text("Img07.JPG",
                                        style: primaryFont.copyWith(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
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
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
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
                 Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                    height: 46,
                    width: size.width,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                       BoxShadow(
                        color: Color.fromARGB(255, 216, 214, 214),
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
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/Rectangle 58.png")),
                                const SizedBox(width: 15,),
                                Text("Img07.JPG",
                                        style: primaryFont.copyWith(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
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
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
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
                Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                    height: 46,
                    width: size.width,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                       BoxShadow(
                        color: Color.fromARGB(255, 216, 214, 214),
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
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/Rectangle 58.png")),
                                const SizedBox(width: 15,),
                                Text("Img07.JPG",
                                        style: primaryFont.copyWith(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
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
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
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
                 if(isdelete1 == true)
                 Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                    height: 46,
                    width: size.width,
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                       BoxShadow(
                        color: Color.fromARGB(255, 216, 214, 214),
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
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/Rectangle 58.png")),
                                const SizedBox(width: 15,),
                                Text("Img07.JPG",
                                        style: primaryFont.copyWith(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          ),
                                        ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Text("5 MB",
                                          style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          const SizedBox(width: 15,),
                                           InkWell(
                                            onTap: (){
                                              setState(() {
                                                isdelete1 = false;
                                              });
                                            },
                                            child:const Image(image: AssetImage("assets/icons/Vector (5).png")))
                            ],
                          ),
                        ),
                      ],
                    )
                   ),
                 ),
                 if(isdelete1 == true)
                 Padding(
                   padding: const EdgeInsets.only(top: 10,right: 20),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text("More than 2mb",
                                                style: primaryFont.copyWith(
                                                  color: const Color(0xffED4569),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                     ],
                   ),
                 ),
              InkWell(
                onTap: (){
                  
                },
                child: Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15,top: 50),
                    child: Container(
                      height: 36,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5), color: const Color.fromARGB(255, 185, 183, 183)),
                      alignment: Alignment.center,
                      child: Text(
                        "+ Add More Files",
                        style: primaryFont.copyWith(
                            color: primaryColor,
                            fontSize: 12,
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
                      height: 42,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4), color: primaryColor),
                      alignment: Alignment.center,
                      child: Text(
                        "Upload & Continue",
                        style: primaryFont.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
              ),
             ]),
           ),
            
           );
    
  }
}