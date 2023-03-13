import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/controllers/home_controller.dart';
import 'package:meops/src/views/category_view/category_see_all_view.dart';
import 'package:meops/src/views/category_view/choose_sub_category.dart';
import 'package:meops/src/views/category_view/search_category_view.dart';
import 'package:meops/src/views/explore_view/explore_view.dart';
import 'package:meops/src/views/home_view/notification_view.dart';

class HomeViewScreen extends StatefulWidget {
  const HomeViewScreen({super.key});

  @override
  State<HomeViewScreen> createState() => _HomeViewScreenState();
}

class _HomeViewScreenState extends State<HomeViewScreen> {

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
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("assets/icons/Logo.png")],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: InkWell(
                      onTap: (){
                          Get.to(() => const SearchCategoryScreen());
                      },
                      child: Container(
                        height: 40,
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
                                readOnly: true,
                                decoration:
                                    InputDecoration.collapsed(hintText: "Search"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(const NotificationView());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.notifications,
                      color: primaryColor,
                      size: 26,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: primaryFont.copyWith(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const CaregorySeeAllView());
                    },
                    child: Row(
                      children: [
                        Text(
                          "See All",
                          style: primaryFont.copyWith(fontSize: 13),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 13,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 300,
              child: GetBuilder<HomeController>(
                builder: (_) {
                  return GridView.builder(
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: (3 / 2),
                  ), 
                      itemCount: homecontroller.categorylistmodel.length,
                    itemBuilder: (BuildContext context, index){
                      return Container(
                        height: 60,
                        child: InkWell(
                          onTap: (){
                            Get.to( ChooseSubCategory(id: homecontroller.categorylistmodel[index].id,));
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    height: 40,
                                    child: Image.network(homecontroller.categorylistmodel[index].categoryImage)
                                        ),
                              ),
                              Text(
                                homecontroller.categorylistmodel[index].name,
                                textAlign: TextAlign.center,
                                style: primaryFont.copyWith(
                                    fontSize: 11, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      );
                    }
                    );
                }
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Works",
                    style: primaryFont.copyWith(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const ExploreView());
                    },
                    child: Row(
                      children: [
                        Text(
                          "Explore All",
                          style: primaryFont.copyWith(fontSize: 13),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 13,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Stack(
                        children: [
                          SizedBox(
                            width: size.width - 60,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/icons/a59eac147508937 1.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 10,
                            child: SizedBox(
                              width: size.width - 90,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Image.asset(
                                            "assets/icons/profile_img.png"),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Jacky",
                                        style: primaryFont.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Photography",
                                    style: primaryFont.copyWith(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
      
    );
  }
}
