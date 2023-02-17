import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/controllers/category_controller.dart';
import 'package:meops/src/widgets/bottom_nav_bar/bottom_navigation_bar.dart';

class PhotographyView extends StatefulWidget {
  const PhotographyView({super.key});

  @override
  State<PhotographyView> createState() => _PhotographyViewState();
}

class _PhotographyViewState extends State<PhotographyView> {
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
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Photography",
              style: primaryFont.copyWith(
                  color: primaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          const SizedBox(
            height: 10,
          ),
          //
          GetBuilder<CategoryController>(builder: (_) {
            return SizedBox(
              height: size.height * 0.8,
              child: ListView.builder(
                  itemCount: categoryController.photographyList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 300,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  color: Colors.grey.withOpacity(0.5))
                            ]),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        categoryController
                                            .photographyList[index]
                                            .profileImage,
                                        height: 35,
                                        fit: BoxFit.fitHeight,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              categoryController
                                                  .photographyList[index].name,
                                              style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              "Oct 23,2022",
                                              style: primaryFont.copyWith(
                                                  color: Colors.grey[500],
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        categoryController
                                            .photographyList[index].categoryName,
                                        style: primaryFont.copyWith(
                                            color: primaryColor,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Icon(
                                        Icons.star_outlined,
                                        color: Colors.amber,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ), //head
                           const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: size.width,
                              height: 200,
                              child: Image.asset(categoryController
                                  .photographyList[index].image,fit: BoxFit.fitWidth,),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.favorite_border_rounded,color: primaryColor,),
                                      Text("Add to Fav",style: primaryFont.copyWith(
                                        color: primaryColor
                                      ),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person_outline_rounded,
                                        color: primaryColor,
                                      ),
                                      Text(
                                        "View Profile",
                                        style: primaryFont.copyWith(
                                            color: primaryColor),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            );
          })
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
