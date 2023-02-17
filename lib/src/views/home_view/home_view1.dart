import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/category_view/category_see_all_view.dart';
import 'package:meops/src/views/explore_view/explore_view.dart';
import 'package:meops/src/views/home_view/notification_view.dart';

class HomeViewScreen extends StatefulWidget {
  const HomeViewScreen({super.key});

  @override
  State<HomeViewScreen> createState() => _HomeViewScreenState();
}

class _HomeViewScreenState extends State<HomeViewScreen> {
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
                          Get.to(() => const CaregorySeeAllView());
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
              height: 20,
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 40,
                          child: SvgPicture.asset(
                              "assets/icons/Game Testing.svg")),
                    ),
                    Text(
                      "Animation &\nGaming",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 40,
                          child:
                              SvgPicture.asset("assets/icons/photography.svg")),
                    ),
                    Text(
                      "Photography &\nVideography",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 40,
                          child:
                              SvgPicture.asset("assets/icons/webappdev.svg")),
                    ),
                    Text(
                      "Web & App\nDevelopment",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 40,
                          child:
                              SvgPicture.asset("assets/icons/influencer.svg")),
                    ),
                    Text(
                      "Influencers",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/designers.svg"),
                    Text(
                      "Designers",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                          height: 40,
                          child: SvgPicture.asset(
                              "assets/icons/sales_marketing.svg")),
                    ),
                    Text(
                      "Sales &\nMarketing",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SizedBox(
                          height: 40,
                          child: SvgPicture.asset("assets/icons/rentals.svg")),
                    ),
                    Text(
                      "Rentals",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/Calendar.svg"),
                    Text(
                      "Events",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/models.svg"),
                    Text(
                      "Models",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/writing.svg"),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Writers",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                          height: 40,
                          child: SvgPicture.asset("assets/icons/Music.svg")),
                    ),
                    Text(
                      "Music",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset("assets/icons/Acting.svg"),
                    Text(
                      "Performers",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
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
              height: 20,
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
            )
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 70,
      //   decoration: BoxDecoration(
      //       color: primaryColor.withOpacity(0.2),
      //       borderRadius: BorderRadius.only(
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
      //       InkWell(
      //         onTap: () {
      //           Get.to(const MessageScreen());
      //         },
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Icon(
      //               Icons.email,
      //               color: primaryColor.withOpacity(0.5),
      //               size: 28,
      //             ),
      //             Text(
      //               "Message",
      //               style: primaryFont.copyWith(
      //                   color: primaryColor.withOpacity(0.5), fontSize: 12),
      //             )
      //           ],
      //         ),
      //       ),
      //       InkWell(
      //         onTap: () {
      //           Get.to(const MyProjectScreen());
      //         },
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Icon(
      //               Icons.list_alt_outlined,
      //               color: primaryColor.withOpacity(0.5),
      //               size: 28,
      //             ),
      //             Text(
      //               "Projects",
      //               style: primaryFont.copyWith(
      //                   fontSize: 12, color: primaryColor.withOpacity(0.5)),
      //             )
      //           ],
      //         ),
      //       ),
      //       InkWell(
      //         onTap: () {
      //           Get.to(const ProfileView());
      //         },
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Icon(
      //               Icons.person,
      //               color: primaryColor.withOpacity(0.5),
      //               size: 28,
      //             ),
      //             Text(
      //               "Profile",
      //               style: primaryFont.copyWith(
      //                   fontSize: 12, color: primaryColor.withOpacity(0.5)),
      //             )
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
