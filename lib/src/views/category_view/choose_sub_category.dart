import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/category_view/animation_gaming_view.dart';

class ChooseSubCategory extends StatefulWidget {
  const ChooseSubCategory({super.key});

  @override
  State<ChooseSubCategory> createState() => _ChooseSubCategoryState();
}

class _ChooseSubCategoryState extends State<ChooseSubCategory> {
   
    bool valuefirst = false;
    bool value2 = false;
    bool value3 = false;
    bool value4 = false;
    bool value5= false;
    bool value6 = false;
    bool value7 = false;
    bool value8 = false;
    bool value9 = false;
    bool value10 = false;
    bool value11 = false;
    bool value12 = false;
    bool value13 = false;
    bool value14 = false;
    bool value15 = false;
    bool value16 = false;
    bool value17 = false;
    bool value18 = false;
    bool value19 = false;
    bool value20 = false;
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:  InkWell(
          onTap: (){
            Get.back();
          },
          child: const Icon(Icons.arrow_back,color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,top: 5,right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text("Choose a Sub-Category",
                                              style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                ),
                                              ),
            ),
              Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only( top: 15),
                    child: Container(
                      height: 45,
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
                ),
              ],
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height:size.height * 0.75,
              child: ListView(
                children: [
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: valuefirst,  
                                onChanged: (value) {  
                                  setState(() {  
                                    valuefirst = value!;  
                                  });  
                                },  
                              ),
                              Text("2D Animator",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value2,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value2 = value!;  
                                  });  
                                },  
                              ),
                              Text("3D Animator",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value3,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value3 = value!;  
                                  });  
                                },  
                              ),
                              Text("2D Designer",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value4,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value4 = value!;  
                                  });  
                                },  
                              ),
                              Text("3D Designer",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value5,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value5 = value!;  
                                  });  
                                },  
                              ),
                              Text("2D Modeler",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value6,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value6 = value!;  
                                  });  
                                },  
                              ),
                              Text("3D Modeler",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value7,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value7 = value!;  
                                  });  
                                },  
                              ),
                              Text("Av Editor",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value8,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value8 = value!;  
                                  });  
                                },  
                              ),
                              Text("Compositor",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value9,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value9 = value!;  
                                  });  
                                },  
                              ),
                              Text("Content Developer",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value10,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value10 = value!;  
                                  });  
                                },  
                              ),
                              Text("Graphic Designer",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value11,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value11 = value!;  
                                  });  
                                },  
                              ),
                              Text("Multimedia Programmer",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value12,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value12 = value!;  
                                  });  
                                },  
                              ),
                              Text("Technical Trainer",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value13,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value13 = value!;  
                                  });  
                                },  
                              ),
                              Text("Visualizer",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                   Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value20,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value20 = value!;  
                                  });  
                                },  
                              ),
                              Text("Game Developer",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value14,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value14 = value!;  
                                  });  
                                },  
                              ),
                              Text("Game Tester",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value15,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value15 = value!;  
                                  });  
                                },  
                              ),
                              Text("Riggung Artist",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value16,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value16 = value!;  
                                  });  
                                },  
                              ),
                              Text("Texture Artist",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                   Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value17,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value17 = value!;  
                                  });  
                                },  
                              ),
                              Text("Special Effect Artist",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                   Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value16,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value16 = value!;  
                                  });  
                                },  
                              ),
                              Text("Lighting Artist",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                   Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value18,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value18 = value!;  
                                  });  
                                },  
                              ),
                              Text("Hair & Cloth Artist",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                   Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: value19,  
                                onChanged: (value) {  
                                  setState(() {  
                                    value19 = value!;  
                                  });  
                                },  
                              ),
                              Text("Others",
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(const AnimationGaming());
                    },
                    child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 42,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4), color: primaryColor),
                      alignment: Alignment.center,
                      child: Text(
                        "Search",
                        style: primaryFont.copyWith(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                                  ),
                  ),
                ],
              ),
            ),  
          ],
        ),
      ),
                  );
                }
               
         
}


