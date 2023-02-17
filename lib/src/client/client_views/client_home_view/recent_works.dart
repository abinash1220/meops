import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/controllers/category_controller.dart';
import 'package:meops/src/widgets/bottom_nav_bar/bottom_navigation_bar.dart';

class RecentWorks extends StatefulWidget {
  const RecentWorks({super.key});

  @override
  State<RecentWorks> createState() => _RecentWorksState();
}

class _RecentWorksState extends State<RecentWorks> {

  final categoryController = Get.find<CategoryController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(73),
        child: Container(
                height: 73,
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
                       Text("Recent Work",
                             style: primaryFont.copyWith(
                             color: Colors.white,
                             fontSize: 24,
                             fontWeight: FontWeight.w600,
                          ),
                       ),
                    ],
                  ),
                ),
              ),
      ),
      body: Center(
        child: SizedBox(
                height: size.height * 0.8,
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: categoryController.topAnimationList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Stack(
                        children: [
                          Container(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    categoryController.topAnimationList[index].image,
                                    fit: BoxFit.cover,
                                  ))),
                          Positioned(
                            top: 10,
                            right: 30,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(20)),
                              alignment: Alignment.center,
                              child: const Icon(Icons.favorite_border,
                                  color: Colors.white, size: 18),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(categoryController
                                        .topAnimationList[index].profileImage),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      categoryController
                                          .topAnimationList[index].name,
                                      style: primaryFont.copyWith(
                                          color: Colors.white, fontSize: 11),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  categoryController
                                      .topAnimationList[index].categoryName,
                                  style: primaryFont.copyWith(
                                      color: Colors.white, fontSize: 11),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
      ),
      bottomNavigationBar: BottomNavBar(index: 0),
    );
  }
}