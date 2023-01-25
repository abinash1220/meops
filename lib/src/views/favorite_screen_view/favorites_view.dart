import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/controllers/category_controller.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  final categoryController = Get.find<CategoryController>();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              centerTitle: true,
              title: Text(
                "Favourites",
                style: primaryFont.copyWith(
                    color: primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index == 0
                            ? primaryColor
                            : primaryColor.withOpacity(0.2)),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Work",
                        style: primaryFont.copyWith(
                            color: index == 0
                                ? Colors.white
                                : primaryColor.withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index == 1
                            ? primaryColor
                            : primaryColor.withOpacity(0.2)),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Projects",
                        style: primaryFont.copyWith(
                            color: index == 1
                                ? Colors.white
                                : primaryColor.withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index == 2
                            ? primaryColor
                            : primaryColor.withOpacity(0.2)),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Profiles",
                        style: primaryFont.copyWith(
                            color: index == 2
                                ? Colors.white
                                : primaryColor.withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),

      ),
      body:  ListView(
        children: [
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
    );
  }
}
