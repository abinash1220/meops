import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/client/client_views/client_projects/project_upload_success.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/splash_view/Splash_screen.dart';


class ClientPublishScreen extends StatefulWidget {
  const ClientPublishScreen({super.key});

  @override
  State<ClientPublishScreen> createState() => _ClientPublishScreenState();
}

class _ClientPublishScreenState extends State<ClientPublishScreen> {

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
                                          child:const Image(image: AssetImage("assets/images/Icon_22_.png")))
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
                              Text("17 MB",
                                          style: primaryFont.copyWith(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          const SizedBox(width: 15,),
                                          const Image(image: AssetImage("assets/images/Icon_22_.png"))
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
                                          const Image(image: AssetImage("assets/images/Icon_25_.png"))
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
                                          const Image(image: AssetImage("assets/images/Icon_22_.png"))
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
                                          const Image(image: AssetImage("assets/images/Icon_25_.png"))
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
                                            child:const Image(image: AssetImage("assets/images/Icon_25_.png")))
                            ],
                          ),
                        ),
                      ],
                    )
                   ),
                 ),
                 
             
              const SizedBox(height: 80,),
              InkWell(
                onTap: (){
                  Get.to(const ProjectSucessScreen());
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
                        "Publish Selected Projects",
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