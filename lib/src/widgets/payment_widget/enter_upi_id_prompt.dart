import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/payment_screens/payment_confirmation_screen/payment_success_screen_view.dart';

void upiModelBottomSheet(size, context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    backgroundColor: primaryColor,
    isDismissible: true,
    context: context,
    // Also default
    builder: (context) {
      return SizedBox(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter UPI ID",
                  labelStyle: primaryFont.copyWith(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: InkWell(
                onTap: () {
                  Get.to(() => const PaymentSuccessScreen());
                },
                child: Container(
                  height: 40,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  alignment: Alignment.center,
                  child: Text(
                    "Verify & Proceed",
                    style: primaryFont.copyWith(
                        fontSize: 18,
                        color: primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ));
    },
  );
}
