import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/controllers/home_controller.dart';
import 'package:meops/src/views/category_view/choose_sub_category.dart';

class SearchCategoryScreen extends StatefulWidget {
  const SearchCategoryScreen({super.key});

  @override
  State<SearchCategoryScreen> createState() => _SearchCategoryScreenState();
}

class _SearchCategoryScreenState extends State<SearchCategoryScreen> {

  final homeController = Get.find<HomeController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: PreferredSize(
            preferredSize:const Size.fromHeight(150),
            child:Column(
              children: [
                 Padding(
            padding: const EdgeInsets.only(left: 20, right: 15,top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child: const Icon(Icons.arrow_back)),
                Image.asset("assets/icons/Logo.png"),
                Container(
                  height: 6,
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
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
                         Expanded(
                          child: TextField(
                            onChanged: (val){
                               if(val.trim() != ""){
                                 homeController.searchCategoryhttp(searchkey: val);
                               }else{
                                homeController.searchCategoryData.clear();
                                homeController.update();
                               }
                            },
                            decoration:
                               const InputDecoration.collapsed(hintText: "Search"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
              ],
            ) ,
           ),
           body: GetBuilder<HomeController>(
             builder: (_) {
               return ListView.builder(
                 itemCount: homeController.searchCategoryData.length,
                 itemBuilder: (context, index) {
                 return Column(
                   children: [
                      Padding(
                             padding: const EdgeInsets.only(left: 20, right: 15),
                             child: InkWell(
                               onTap: (){
                                 Get.to( ChooseSubCategory(id: homeController.categorylistmodel[index].id,));
                               },
                               child: Row(
                                 children: [
                                   SizedBox(
                                     height: 40,
                                     child: Image.network(homeController.searchCategoryData[index].categoryImage)),
                                   const SizedBox(
                                     width: 15,
                                   ),
                                   Text(
                                     homeController.searchCategoryData[index].name,
                                     style: primaryFont.copyWith(
                                         fontSize: 16, fontWeight: FontWeight.w500),
                                   )
                                 ],
                               ),
                             ),
                           ),
                           const SizedBox(
                             height: 8,
                           ),
                           Divider(
                             thickness: 1,
                             color: Colors.purple.withOpacity(0.5),
                           )
                   ],
                 );
               });
             }
           ),
    );
  }
}