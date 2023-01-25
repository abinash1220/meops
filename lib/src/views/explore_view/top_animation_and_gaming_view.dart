import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/controllers/category_controller.dart';
import 'package:meops/src/widgets/bottom_nav_bar/bottom_navigation_bar.dart';

class TopCategoryView extends StatefulWidget {
  const TopCategoryView({super.key});

  @override
  State<TopCategoryView> createState() => _TopCategoryViewState();
}

class _TopCategoryViewState extends State<TopCategoryView> {
  final categoryController = Get.find<CategoryController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(30, 55),
        child: Container(
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              )),
          alignment: Alignment.centerLeft,
          child: const Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Top picks for you in",
                style: primaryFont.copyWith(
                    color: primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Animation & Gaming",
                style: primaryFont.copyWith(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          // Row(
          //   children: [
          //     Expanded(
          //       child: Padding(
          //         padding: const EdgeInsets.all(10.0),
          //         child: Container(
          //           height: 170,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(20),
          //               image: const DecorationImage(
          //                   image: AssetImage(
          //                       "assets/images/grid_image (10).png"))),
          //           alignment: Alignment.bottomCenter,
          //           child: Padding(
          //             padding: const EdgeInsets.only(bottom: 18),
          //             child: Text(
          //               "Animation & Gaming",
          //               style: primaryFont.copyWith(
          //                 color: Colors.white,
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       child: Padding(
          //         padding: const EdgeInsets.all(10.0),
          //         child: Container(
          //           height: 170,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(20),
          //             image: const DecorationImage(
          //                 image:
          //                     AssetImage("assets/images/grid_image (9).png")),
          //           ),
          //           alignment: Alignment.bottomCenter,
          //           child: Padding(
          //             padding: const EdgeInsets.only(bottom: 18),
          //             child: Text(
          //               "Website &\nApp Development",
          //               textAlign: TextAlign.center,
          //               style: primaryFont.copyWith(
          //                 color: Colors.white,
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 15),
          //   child: Text(
          //     "Popular On App",
          //     style: primaryFont.copyWith(
          //         color: primaryColor,
          //         fontSize: 22,
          //         fontWeight: FontWeight.w600),
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          //
          GetBuilder<CategoryController>(builder: (_) {
            return Container(
              height: size.height * 0.8,
              child: MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                physics: NeverScrollableScrollPhysics(),
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
            );
          })
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
