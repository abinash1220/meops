import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/controllers/home_controller.dart';
import 'package:meops/src/views/category_view/animation_gaming_view.dart';

class ChooseSubCategory extends StatefulWidget {
  int id;
  ChooseSubCategory({super.key,required this.id});

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

    final homeController = Get.find<HomeController>();

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.subcategory(id: widget.id.toString());
  }


  
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
              height:size.height * 0.68,
              child: ListView.builder(
                itemCount: homeController.subcategorydata.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                        Row(
                    children: [
                      Checkbox(  
                                checkColor: Colors.white,  
                                activeColor: primaryColor,  
                                value: homeController.subcategorydata[index].isSelected,  
                                onChanged: (value) {  
                                  setState(() {  
                                    homeController.subcategorydata[index].isSelected = value!;  
                                    homeController.update();
                                  });  
                                },  
                              ),
                              Text(homeController.subcategorydata[index].name,
                                                    style: primaryFont.copyWith(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      //fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                    ],
                  ),

                  

                    ],
                  );
                },
              ),
            ),  
            InkWell(
                    onTap: (){
                      Get.to(const AnimationGaming());
                    },
                    child: Padding(
                    padding: const EdgeInsets.only(top: 10),
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
                  );
                }
               
         
}



     