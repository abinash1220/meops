import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/transaction_and_saved_card_views/paid_to_view_screen.dart';

class PaymentSuccessScreen extends StatefulWidget {
  const PaymentSuccessScreen({super.key});

  @override
  State<PaymentSuccessScreen> createState() => _PaymentSuccessScreenState();
}

class _PaymentSuccessScreenState extends State<PaymentSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              alignment: Alignment.center,
              child: Icon(
                Icons.check,
                color: primaryColor,
                size: 80,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Payment Success",
              style: primaryFont.copyWith(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Amount Paid: ₹1500",
              style: primaryFont.copyWith(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                  Get.off(()=> PaidToView());
                  },
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Text(
                        "View Summary",
                        style: primaryFont.copyWith(color: primaryColor,fontSize: 17,fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
