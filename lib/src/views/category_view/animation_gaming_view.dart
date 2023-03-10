import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/controllers/professional%20controller/professional_list_controller.dart';
import 'package:meops/src/views/category_view/profile_sts_view.dart';
import 'package:meops/src/views/filter_screen_view/filter_screen_view.dart';

class AnimationGaming extends StatefulWidget {
  const AnimationGaming({super.key});

  @override
  State<AnimationGaming> createState() => _AnimationGamingState();
}

class _AnimationGamingState extends State<AnimationGaming> {

  final professinalController = Get.find<ProfessionController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    professinalController.getProfessionalList(
       category: "Plumber",
       subcategory: "Plumber Service",
       usertype: "Professional",
       perpage: "10");
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 25, left: 20),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Animation & Gaming",
                  style: primaryFont.copyWith(
                    color: primaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                    onTap: () {
                      Get.to(() =>const FilterView());
                    },
                    child: const Image(
                        image: AssetImage("assets/icons/Group 664.png")))
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.80,
            child: GetBuilder<ProfessionController>(
              builder: (_) {
                return ListView.builder(
                  itemCount: professinalController.professionallistdata.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: InkWell(
                            onTap: () {
                              Get.to(const ProfileStsView());
                            },
                            child: Container(
                              width: size.width,
                              height: 164,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromARGB(255, 211, 210, 210),
                                        blurRadius: 5.0),
                                  ]),
                              child: Row(
                                children: [
                                  Stack(children: [
                                    const Image(image: AssetImage("assets/images/img1.png")),
                                    Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius: BorderRadius.circular(15)),
                                        child:const  Center(
                                          child: Image(
                                              image: AssetImage(
                                                  "assets/icons/Vector (7).png")),
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 15, right: 10, bottom: 15),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Image(
                                                image: AssetImage(
                                                    "assets/images/prf2.png")),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              professinalController.professionallistdata[index].displayName,
                                              style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Image(
                                                image: AssetImage(
                                                    "assets/icons/Vector (6).png")),
                                            const SizedBox(
                                              width: 35,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            Text(
                                              "4.0(46)",
                                              style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Category",
                                              style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 14,
                                                //fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 35,
                                            ),
                                            Text(
                                              professinalController.professionallistdata[index].skillDetails.first.skill,
                                              //professinalController.professionallistdata[index].data.,
                                              style: primaryFont.copyWith(
                                                color: Colors.black,
                                                fontSize: 14,
                                                //fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Location",
                                              style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 14,
                                                // fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 35,
                                            ),
                                            Text(
                                              professinalController.professionallistdata[index].skillDetails.first.workLocation,
                                              style: primaryFont.copyWith(
                                                color: Colors.black,
                                                fontSize: 14,
                                                // fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Experience",
                                              style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 14,
                                                // fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 22,
                                            ),
                                            Text(
                                              professinalController.professionallistdata[index].skillDetails.first.skillLevel,
                                              style: primaryFont.copyWith(
                                                color: Colors.black,
                                                fontSize: 14,
                                                // fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Avg Rate",
                                              style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontSize: 14,
                                                // fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 35,
                                            ),
                                            Text(
                                              "??? 1400/Day",
                                              style: primaryFont.copyWith(
                                                color: Colors.black,
                                                fontSize: 14,
                                                // fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                        //   child: Container(
                        //     width: size.width,
                        //     height: 164,
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         borderRadius: BorderRadius.circular(10),
                        //         boxShadow: const [
                        //           BoxShadow(
                        //               color: Color.fromARGB(255, 211, 210, 210),
                        //               blurRadius: 5.0),
                        //         ]),
                        //     child: Row(
                        //       children: [
                        //         Stack(children: [
                        //           const Image(image: AssetImage("assets/images/img2.png")),
                        //           Padding(
                        //             padding: const EdgeInsets.all(13.0),
                        //             child: Container(
                        //               height: 25,
                        //               width: 25,
                        //               decoration: BoxDecoration(
                        //                   color: primaryColor,
                        //                   borderRadius: BorderRadius.circular(15)),
                        //               child:const  Center(
                        //                 child: Image(
                        //                     image: AssetImage(
                        //                         "assets/icons/Vector (7).png")),
                        //               ),
                        //             ),
                        //           ),
                        //         ]),
                        //         Padding(
                        //           padding: const EdgeInsets.only(
                        //               left: 15, top: 15, right: 10, bottom: 15),
                        //           child: Column(
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               Row(
                        //                 children: [
                        //                  const Image(
                        //                       image:
                        //                           AssetImage("assets/images/prf.png")),
                        //                   const SizedBox(
                        //                     width: 5,
                        //                   ),
                        //                   Text(
                        //                     "Kissan",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 16,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 5,
                        //                   ),
                        //                   const Image(
                        //                       image: AssetImage(
                        //                           "assets/icons/Vector (6).png")),
                        //                   const SizedBox(
                        //                     width: 35,
                        //                   ),
                        //                   const Icon(
                        //                     Icons.star,
                        //                     color: Colors.yellow,
                        //                   ),
                        //                   Text(
                        //                     "4.0(46)",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 16,
                        //                       fontWeight: FontWeight.w500,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //               const SizedBox(
                        //                 height: 15,
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Text(
                        //                     "Category",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 14,
                        //                       //fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 35,
                        //                   ),
                        //                   Text(
                        //                     "Videographer",
                        //                     style: primaryFont.copyWith(
                        //                       color: Colors.black,
                        //                       fontSize: 14,
                        //                       //fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //               const SizedBox(
                        //                 height: 10,
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Text(
                        //                     "Location",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 35,
                        //                   ),
                        //                   Text(
                        //                     "Chennai",
                        //                     style: primaryFont.copyWith(
                        //                       color: Colors.black,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //               const SizedBox(
                        //                 height: 10,
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Text(
                        //                     "Experience",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 22,
                        //                   ),
                        //                   Text(
                        //                     "Intermediate",
                        //                     style: primaryFont.copyWith(
                        //                       color: Colors.black,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //               const SizedBox(
                        //                 height: 10,
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Text(
                        //                     "Avg Rate",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 35,
                        //                   ),
                        //                   Text(
                        //                     "??? 400/Hour",
                        //                     style: primaryFont.copyWith(
                        //                       color: Colors.black,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                        //   child: Container(
                        //     width: size.width,
                        //     height: 164,
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         borderRadius: BorderRadius.circular(10),
                        //         boxShadow: const [
                        //           BoxShadow(
                        //               color: Color.fromARGB(255, 211, 210, 210),
                        //               blurRadius: 5.0),
                        //         ]),
                        //     child: Row(
                        //       children: [
                        //         Stack(children: [
                        //           const Image(image: AssetImage("assets/images/img1.png")),
                        //           Padding(
                        //             padding: const EdgeInsets.all(13.0),
                        //             child: Container(
                        //               height: 25,
                        //               width: 25,
                        //               decoration: BoxDecoration(
                        //                   color: primaryColor,
                        //                   borderRadius: BorderRadius.circular(15)),
                        //               child:const Center(
                        //                 child: Image(
                        //                     image: AssetImage(
                        //                         "assets/icons/Vector (7).png")),
                        //               ),
                        //             ),
                        //           ),
                        //         ]),
                        //         Padding(
                        //           padding: const EdgeInsets.only(
                        //               left: 15, top: 15, right: 10, bottom: 15),
                        //           child: Column(
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               Row(
                        //                 children: [
                        //                  const Image(
                        //                       image:
                        //                           AssetImage("assets/images/prf1.png")),
                        //                   const SizedBox(
                        //                     width: 5,
                        //                   ),
                        //                   Text(
                        //                     "Madhu",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 16,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 5,
                        //                   ),
                        //                  const  Image(
                        //                       image: AssetImage(
                        //                           "assets/icons/Vector (6).png")),
                        //                   const SizedBox(
                        //                     width: 35,
                        //                   ),
                        //                   const Icon(
                        //                     Icons.star,
                        //                     color: Colors.yellow,
                        //                   ),
                        //                   Text(
                        //                     "4.0(46)",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 16,
                        //                       fontWeight: FontWeight.w500,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //               const SizedBox(
                        //                 height: 15,
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Text(
                        //                     "Category",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 14,
                        //                       //fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 35,
                        //                   ),
                        //                   Text(
                        //                     "Events",
                        //                     style: primaryFont.copyWith(
                        //                       color: Colors.black,
                        //                       fontSize: 14,
                        //                       //fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //               const SizedBox(
                        //                 height: 10,
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Text(
                        //                     "Location",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 35,
                        //                   ),
                        //                   Text(
                        //                     "Chennai",
                        //                     style: primaryFont.copyWith(
                        //                       color: Colors.black,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //               const SizedBox(
                        //                 height: 10,
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Text(
                        //                     "Experience",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 22,
                        //                   ),
                        //                   Text(
                        //                     "Intermediate",
                        //                     style: primaryFont.copyWith(
                        //                       color: Colors.black,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //               const SizedBox(
                        //                 height: 10,
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Text(
                        //                     "Avg Rate",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 35,
                        //                   ),
                        //                   Text(
                        //                     "Not Applicable",
                        //                     style: primaryFont.copyWith(
                        //                       color: Colors.black,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(
                        //       left: 15, right: 15, bottom: 15, top: 15),
                        //   child: Container(
                        //     width: size.width,
                        //     height: 164,
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         borderRadius: BorderRadius.circular(10),
                        //         boxShadow: const [
                        //           BoxShadow(
                        //               color: Color.fromARGB(255, 211, 210, 210),
                        //               blurRadius: 5.0),
                        //         ]),
                        //     child: Row(
                        //       children: [
                        //         Stack(children: [
                        //           const Image(image: AssetImage("assets/images/img2.png")),
                        //           Padding(
                        //             padding: const EdgeInsets.all(13.0),
                        //             child: Container(
                        //               height: 25,
                        //               width: 25,
                        //               decoration: BoxDecoration(
                        //                   color: primaryColor,
                        //                   borderRadius: BorderRadius.circular(15)),
                        //               child: const Center(
                        //                 child: Image(
                        //                     image: AssetImage(
                        //                         "assets/icons/Vector (7).png")),
                        //               ),
                        //             ),
                        //           ),
                        //         ]),
                        //         Padding(
                        //           padding: const EdgeInsets.only(
                        //               left: 15, top: 15, right: 10, bottom: 15),
                        //           child: Column(
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               Row(
                        //                 children: [
                        //                   const Image(
                        //                       image:
                        //                           AssetImage("assets/images/prf3.png")),
                        //                   const SizedBox(
                        //                     width: 5,
                        //                   ),
                        //                   Text(
                        //                     "Madhu",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 16,
                        //                       fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 5,
                        //                   ),
                        //                   const Image(
                        //                       image: AssetImage(
                        //                           "assets/icons/Vector (6).png")),
                        //                   const SizedBox(
                        //                     width: 35,
                        //                   ),
                        //                   const Icon(
                        //                     Icons.star,
                        //                     color: Colors.yellow,
                        //                   ),
                        //                   Text(
                        //                     "4.0(46)",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 16,
                        //                       fontWeight: FontWeight.w500,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //               const SizedBox(
                        //                 height: 15,
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Text(
                        //                     "Category",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 14,
                        //                       //fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 35,
                        //                   ),
                        //                   Text(
                        //                     "Designer",
                        //                     style: primaryFont.copyWith(
                        //                       color: Colors.black,
                        //                       fontSize: 14,
                        //                       //fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //               const SizedBox(
                        //                 height: 10,
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Text(
                        //                     "Location",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 35,
                        //                   ),
                        //                   Text(
                        //                     "Chennai",
                        //                     style: primaryFont.copyWith(
                        //                       color: Colors.black,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //               const SizedBox(
                        //                 height: 10,
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Text(
                        //                     "Experience",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 22,
                        //                   ),
                        //                   Text(
                        //                     "Intermediate",
                        //                     style: primaryFont.copyWith(
                        //                       color: Colors.black,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //               const SizedBox(
                        //                 height: 10,
                        //               ),
                        //               Row(
                        //                 children: [
                        //                   Text(
                        //                     "Avg Rate",
                        //                     style: primaryFont.copyWith(
                        //                       color: primaryColor,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                   const SizedBox(
                        //                     width: 35,
                        //                   ),
                        //                   Text(
                        //                     "??? 1400/Day",
                        //                     style: primaryFont.copyWith(
                        //                       color: Colors.black,
                        //                       fontSize: 14,
                        //                       // fontWeight: FontWeight.bold,
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    );
                  }
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
