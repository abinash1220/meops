import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class PaymentRefundPolicy extends StatefulWidget {
  const PaymentRefundPolicy({super.key});

  @override
  State<PaymentRefundPolicy> createState() => _PaymentRefundPolicyState();
}

class _PaymentRefundPolicyState extends State<PaymentRefundPolicy> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container(
                height: 80,
                decoration:  BoxDecoration(
                    color: primaryColor,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25,left: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child:Icon(Icons.arrow_back,color: Colors.white,),
                      ),
                      
                    ],
                  ),
                ),
              ),),
              body: Padding(
                padding: const EdgeInsets.only(left: 15,top: 15,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Payment & Refund Policy",
                                       style: primaryFont.copyWith(
                                       color: primaryColor,
                                       fontSize: 16,
                                       fontWeight: FontWeight.w600,
                                    ),
                                 ),
                                 const SizedBox(height: 10,),
                                 Text("""
We appreciate the fact that you like to avail of the\nservices we have built exclusively for talented\nprofessionals. We also want to make sure that you\nhave a rewarding experience while you’re exploring,\nevaluating, and availing of our services.
As with any online experience, there are terms and\nconditions that apply to transactions at MEOps.\nWe’ll be as brief as our attorneys will allow. The\nmain thing to remember is that by placing availing\nof service on MEOps, you agree to the terms along\nwith the MEOps Privacy Policy.
We charge a flat fee of 10% of your earnings, every\ntime you avail of our varied services on MEOps.
If, for any reason, you are not completely satisfied\nwith any of our services, please do not hesitate to\ncontact us and we will try to evaluate and resolve\nthe issue to the best of our ability.

""",
                                       style: primaryFont.copyWith(
                                       color: const Color(0xff313033),
                                       fontSize: 15,
                                       fontWeight: FontWeight.w500,
                                    ),
                                 ),
                  ],
                ),
              ),
    );
  }
}