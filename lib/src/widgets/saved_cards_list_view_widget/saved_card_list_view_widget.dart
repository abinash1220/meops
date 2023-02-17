import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/transaction_and_saved_card_views/add_new_card_view.dart';

class SavedCardsListView extends StatefulWidget {
  const SavedCardsListView({super.key});

  @override
  State<SavedCardsListView> createState() => _SavedCardsListViewState();
}

class _SavedCardsListViewState extends State<SavedCardsListView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "Available Cards",
            style: primaryFont.copyWith(
                fontSize: 19, color: primaryColor, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            height: 290,
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(blurRadius: 2, color: Colors.grey.withOpacity(0.5))
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 10,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(20)),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    SizedBox(
                        width: size.width - 60,
                        child: Image.asset(
                          "assets/icons/_461893568.png",
                          fit: BoxFit.fill,
                        )),
                    Positioned(
                        right: 15,
                        top: 15,
                        child: Image.asset("assets/icons/Group 732.png")),
                    Positioned(
                      bottom: 60,
                      left: 30,
                      child: Text(
                        "**** **** ***6 0856",
                        style: primaryFont.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                    Positioned(
                      bottom: 25,
                      left: 30,
                      child: Text(
                        "Ravi R     01/27",
                        style: primaryFont.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    )
                  ],
                ),
                
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15,top: 15, right: 15),
          child: Container(
            height: 290,
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(blurRadius: 2, color: Colors.grey.withOpacity(0.5))
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 10,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(20)),
                            child:const Center(child: Image(
                              height: 20,
                              width: 20,
                              fit: BoxFit.fill,
                              image: AssetImage("assets/icons/Vector (6).png"),)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    SizedBox(
                        width: size.width - 60,
                        child: Image.asset(
                          "assets/icons/_461893568.png",
                          fit: BoxFit.fill,
                        )),
                    Positioned(
                        right: 15,
                        top: 15,
                        child: Image.asset("assets/images/Group 733.png")),
                    Positioned(
                      bottom: 60,
                      left: 30,
                      child: Text(
                        "**** **** ***6 0856",
                        style: primaryFont.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                    Positioned(
                      bottom: 25,
                      left: 30,
                      child: Text(
                        "Ravi R     01/27",
                        style: primaryFont.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    )
                  ],
                ),
                
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: InkWell(
                onTap: () {
                  Get.to(const EnterCardDetailsView());
                },
                child: Container(
                  height: 28,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "Add New Card",
                      style: primaryFont.copyWith(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 20),
          child: Container(
                    height: 43,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: primaryColor),
                    alignment: Alignment.center,
                    child: Text(
                      "Continue",
                      style: primaryFont.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
        ),
      ],
    );
  }
}
