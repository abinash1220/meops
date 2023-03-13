import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/controllers/home_controller.dart';
import 'package:meops/src/views/category_view/choose_sub_category.dart';
import 'package:meops/src/widgets/bottom_nav_bar/bottom_navigation_bar.dart';

class CaregorySeeAllView extends StatefulWidget {
  const CaregorySeeAllView({super.key});

  @override
  State<CaregorySeeAllView> createState() => _CaregorySeeAllViewState();
}

class _CaregorySeeAllViewState extends State<CaregorySeeAllView> {

  List<CategoryModel> categoryList = [
    CategoryModel(
        image: "assets/icons/Game Testing.svg", name: "Animation & Gaming"),
    CategoryModel(
        image: "assets/icons/photography.svg",
        name: "Photography & Videography"),
    CategoryModel(
        image: "assets/icons/webappdev.svg", name: "Website & App Development"),
    CategoryModel(image: "assets/icons/influencer.svg", name: "Influencers"),
    CategoryModel(image: "assets/icons/designers.svg", name: "Designers"),
    CategoryModel(
        image: "assets/icons/sales_marketing.svg", name: "Sales & Marketing"),
    CategoryModel(image: "assets/icons/rentals.svg", name: "Rentals"),
    CategoryModel(image: "assets/icons/Calendar.svg", name: "Events"),
    CategoryModel(image: "assets/icons/models.svg", name: "Models"),
    CategoryModel(image: "assets/icons/writing.svg", name: "Writers"),
    CategoryModel(image: "assets/icons/Acting.svg", name: "Performers"),
    CategoryModel(
        image: "assets/icons/Clapperboard.svg", name: "Pre-Production"),
    CategoryModel(
        image: "assets/icons/Video Editing.svg", name: "Post-Production"),
    CategoryModel(image: "assets/icons/Social Media.svg", name: "Social Media"),
    CategoryModel(image: "assets/icons/Director Chair.svg", name: "Directors"),
    CategoryModel(image: "assets/icons/Music.svg", name: "Music"),
  ];
  
  final homecontroller = Get.find<HomeController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homecontroller.getcategorylist();
  }



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 15),
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
          const SizedBox(
            height: 10,
          ),
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
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: size.height * 0.74,
            child: ListView.builder(
                itemCount: homecontroller.categorylistmodel.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 15),
                        child: InkWell(
                          onTap: (){
                            Get.to( ChooseSubCategory(id: homecontroller.categorylistmodel[index].id,));
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                height: 40,
                                child: Image.network(homecontroller.categorylistmodel[index].categoryImage)),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                homecontroller.categorylistmodel[index].name,
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
                }),
          ),
          BottomNavBar(),
        ],
      ),
      
      //       bottomNavigationBar: Container(
      //   height: 70,
      //   decoration: BoxDecoration(
      //       color: primaryColor.withOpacity(0.2),
      //       borderRadius: const BorderRadius.only(
      //         topRight: Radius.circular(20),
      //         topLeft: Radius.circular(20),
      //       )),
      //   child: Row(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(
      //             Icons.home,
      //             color: primaryColor,
      //             size: 28,
      //           ),
      //           Text(
      //             "Home",
      //             style:
      //                 primaryFont.copyWith(color: primaryColor, fontSize: 12),
      //           )
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(
      //             Icons.email,
      //             color: primaryColor.withOpacity(0.5),
      //             size: 28,
      //           ),
      //           Text(
      //             "Message",
      //             style: primaryFont.copyWith(
      //                 color: primaryColor.withOpacity(0.5), fontSize: 12),
      //           )
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(
      //             Icons.list_alt_outlined,
      //             color: primaryColor.withOpacity(0.5),
      //             size: 28,
      //           ),
      //           Text(
      //             "Projects",
      //             style: primaryFont.copyWith(
      //                 fontSize: 12, color: primaryColor.withOpacity(0.5)),
      //           )
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(
      //             Icons.person,
      //             color: primaryColor.withOpacity(0.5),
      //             size: 28,
      //           ),
      //           Text(
      //             "Profile",
      //             style: primaryFont.copyWith(
      //                 fontSize: 12, color: primaryColor.withOpacity(0.5)),
      //           )
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

class CategoryModel {
  String name;
  String image;

  CategoryModel({required this.image, required this.name});
}
