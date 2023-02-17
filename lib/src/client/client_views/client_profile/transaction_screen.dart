import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/payment_screens/payment_confirmation_screen/payment_confirmation_screen.dart';
import 'package:meops/src/views/transaction_and_saved_card_views/paid_to_view_screen.dart';
import 'package:meops/src/widgets/saved_cards_list_view_widget/saved_card_list_view_widget.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() =>
      _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
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
              leading: InkWell(
                onTap: (){
                  Get.back();
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
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
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: index == 0
                            ? primaryColor
                            : primaryColor.withOpacity(0.2)),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Transactions",
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
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: index == 1
                            ? primaryColor
                            : primaryColor.withOpacity(0.2)),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Saved Cards",
                        style: primaryFont.copyWith(
                            color: index == 1
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
      body: index == 1
          ?const SavedCardsListView()
          : ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time_rounded,
                        color: primaryColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Pending Transactions",
                        style: primaryFont.copyWith(
                            fontSize: 19,
                            color: primaryColor,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Stack(
                    children: [
                      Container(
                        height: 250,
                        width: size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(blurRadius: 2, color: Colors.grey)
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                          "assets/icons/WhatsApp Image 2022-11-11 at 5.33 (1).png"),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Madhu",
                                            style: primaryFont.copyWith(
                                                color: primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "Last Payed 16 Oct 2022",
                                            style: primaryFont.copyWith(
                                                fontSize: 10,
                                                color: Colors.grey[400]),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Text(
                                      "Project Details",
                                      style: primaryFont.copyWith(
                                          decoration: TextDecoration.underline,
                                          fontSize: 13,
                                          color: primaryColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Title Of Project",
                                        style: primaryFont.copyWith(
                                            fontSize: 14,
                                            color: primaryColor,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Image.asset("assets/icons/Project.png")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Job Poster Design",
                                    style: primaryFont.copyWith(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Amount",
                                        style: primaryFont.copyWith(
                                            fontSize: 14,
                                            color: primaryColor,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Image.asset("assets/icons/Vector (1).png")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Total",
                                        style: primaryFont.copyWith(
                                            color: Colors.grey),
                                      ),
                                      const SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        "₹1400",
                                        style: primaryFont.copyWith(
                                            color: primaryColor),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 90,
                                    child: const Divider(
                                      thickness: 1.5,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Paid",
                                        style: primaryFont.copyWith(
                                            color: Colors.green),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      Text(
                                        "₹700",
                                        style: primaryFont.copyWith(
                                            color: primaryColor),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 90,
                                    child: const Divider(
                                      thickness: 1.5,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Balance",
                                            style: primaryFont.copyWith(
                                                color: Colors.orange),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "₹700",
                                            style: primaryFont.copyWith(
                                                color: primaryColor),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 10,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(() =>const PaymentConfirmtionScreen());
                              },
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(5)),
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Text(
                                    "Pay Balance",
                                    style: primaryFont.copyWith(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.file_copy_outlined,
                        color: primaryColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Completed Transactions",
                        style: primaryFont.copyWith(
                            fontSize: 19,
                            color: primaryColor,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() =>const PaidToView());
                        },
                        child: Container(
                          height: 100,
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(blurRadius: 2, color: Colors.grey)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                        "assets/icons/WhatsApp Image 2022-11-11 at 5.33 (1).png"),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Kissan",
                                              style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              "Oct 6th 4:56 pm",
                                              style: primaryFont.copyWith(
                                                  fontSize: 10,
                                                  color: Colors.grey[400]),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Title Of Project",
                                              style: primaryFont.copyWith(
                                                  fontSize: 13,
                                                  color: primaryColor,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Image.asset(
                                                "assets/icons/Project.png")
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "Cartoon Illustration",
                                          style: primaryFont.copyWith(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Text(
                          "₹ 2500",
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.green,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                 const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() =>const PaidToView());
                        },
                        child: Container(
                          height: 100,
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(blurRadius: 2, color: Colors.grey)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                        "assets/icons/WhatsApp Image 2022-11-11 at 5.33 (1).png"),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Kissan",
                                              style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              "Oct 6th 4:56 pm",
                                              style: primaryFont.copyWith(
                                                  fontSize: 10,
                                                  color: Colors.grey[400]),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Title Of Project",
                                              style: primaryFont.copyWith(
                                                  fontSize: 13,
                                                  color: primaryColor,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Image.asset(
                                                "assets/icons/Project.png")
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "Cartoon Illustration",
                                          style: primaryFont.copyWith(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Text(
                          "₹ 2500",
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.green,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() =>const PaidToView());
                        },
                        child: Container(
                          height: 100,
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(blurRadius: 2, color: Colors.grey)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                        "assets/icons/WhatsApp Image 2022-11-11 at 5.33 (1).png"),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Kissan",
                                              style: primaryFont.copyWith(
                                                  color: primaryColor,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              "Oct 6th 4:56 pm",
                                              style: primaryFont.copyWith(
                                                  fontSize: 10,
                                                  color: Colors.grey[400]),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Title Of Project",
                                              style: primaryFont.copyWith(
                                                  fontSize: 13,
                                                  color: primaryColor,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Image.asset(
                                                "assets/icons/Project.png")
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "Cartoon Illustration",
                                          style: primaryFont.copyWith(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Text(
                          "₹ 2500",
                          style: primaryFont.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.green,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
