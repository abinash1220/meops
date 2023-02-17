import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/payment_screens/payment_confirmation_screen/payment_screen_view.dart';

class PaymentConfirmtionScreen extends StatefulWidget {
  const PaymentConfirmtionScreen({super.key});

  @override
  State<PaymentConfirmtionScreen> createState() =>
      _PaymentConfirmtionScreenState();
}

class _PaymentConfirmtionScreenState extends State<PaymentConfirmtionScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: InkWell(
                onTap: (){
                  Get.back();
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.fact_check_outlined,
                  color: Colors.white,
                  size: 28,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  "Confirmation",
                  style: primaryFont.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
      body: Container(
        width: size.width,
        decoration:const BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "Order Details",
                style: primaryFont.copyWith(
                    color: primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Image.asset("assets/icons/Rectangle 154.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Diwali Graphics Work",
                        style: primaryFont.copyWith(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: size.width * 0.65,
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
                          style: primaryFont.copyWith(fontSize: 13),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Order Summary",
                style: primaryFont.copyWith(
                    color: primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Graphic Design",
                    style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "₹ 1600",
                    style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600, color: primaryColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Logo Design",
                    style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "₹ 1400",
                    style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600, color: primaryColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Logo Animation",
                    style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "₹ 1000",
                    style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600, color: primaryColor),
                  )
                ],
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(left: 15, right: 15),
              child: Divider(
                thickness: 1.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount",
                    style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "₹ 4000",
                    style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600, color: primaryColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Service fee",
                        style:
                            primaryFont.copyWith(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: Text(
                                'Dummy Text',
                                style: primaryFont.copyWith(
                                    color: primaryColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              content: Text(
                                '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since''',
                                style: primaryFont.copyWith(fontSize: 12),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          );
                        },
                        child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.question_mark,
                              size: 10,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Text(
                    "₹ 1000",
                    style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600, color: primaryColor),
                  )
                ],
              ),
            ),
           const Padding(
              padding:  EdgeInsets.only(left: 15, right: 15),
              child: Divider(
                thickness: 1.5,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Offer Code",
                    style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          content: TextField(
                            decoration: InputDecoration(
                                labelText: "Offer Code",
                                labelStyle:
                                    primaryFont.copyWith(color: primaryColor),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: primaryColor)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: primaryColor))),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: Text(
                                'Cancel',
                                style: primaryFont.copyWith(
                                    color: Colors.grey[300]),
                              ),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('Apply'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text(
                      "Enter a Code",
                      style: primaryFont.copyWith(
                          fontWeight: FontWeight.w600, color: primaryColor),
                    ),
                  )
                ],
              ),
            ),
           const Padding(
              padding:  EdgeInsets.only(left: 15, right: 15),
              child: Divider(
                thickness: 1.5,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "₹ 4200",
                    style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600, color: primaryColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery Date",
                    style: primaryFont.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Oct 24, 2022 (Thursday)",
                    style: primaryFont.copyWith(
                        fontWeight: FontWeight.w600, color: primaryColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: () {
                  Get.to(() =>const PaymentScreenView());
                },
                child: Container(
                  height: 43,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: primaryColor),
                  alignment: Alignment.center,
                  child: Text(
                    "Confirm & Pay",
                    style: primaryFont.copyWith(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
