import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/profile_views/about_us_screen.dart';
import 'package:meops/src/views/profile_views/language_screen.dart';
import 'package:meops/src/views/profile_views/payment_refund_policy.dart';
import 'package:meops/src/views/profile_views/refer_earn_screen.dart';
import 'package:meops/src/views/profile_views/support.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(73),
        child: Container(
                height: 73,
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
                        child:const Icon(Icons.arrow_back,color: Colors.white,),
                      ),
                      const SizedBox(width: 15,),
                       Text("Settings",
                             style: primaryFont.copyWith(
                             color: Colors.white,
                             fontSize: 24,
                             fontWeight: FontWeight.w600,
                          ),
                       ),
                    ],
                  ),
                ),
              ),
      ),
      body: Column(
        children: [
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: (){
                    Get.to(const AboutUsScreen());
                  },
                  child: Row(
                    children: [
                      const Image(image: AssetImage("assets/icons/Group 812.png")),
                      const SizedBox(width: 20,),
                      Text("About Us",
                                     style: primaryFont.copyWith(
                                     color: primaryColor,
                                     fontSize: 16,
                                     fontWeight: FontWeight.w400,
                                  ),
                               ),
                    ],
                  ),
                ),
              ),
             const Padding(
                padding:  EdgeInsets.only(left: 15,right: 15,top: 10),
                child:  Divider(
                  thickness: 1.5,
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: (){
                    Get.to(const LanguageScreen());
                  },
                  child: Row(
                    children: [
                      const Image(image: AssetImage("assets/icons/Group 811.png")),
                      const SizedBox(width: 20,),
                      Text("Language",
                                     style: primaryFont.copyWith(
                                     color: primaryColor,
                                     fontSize: 16,
                                     fontWeight: FontWeight.w400,
                                  ),
                               ),
                    ],
                  ),
                ),
              ),
             const Padding(
                padding:  EdgeInsets.only(left: 15,right: 15,top: 10),
                child:  Divider(
                  thickness: 1.5,
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Image(image: AssetImage("assets/icons/Group 1053.png")),
                    const SizedBox(width: 20,),
                    Text("Update KYC",
                                   style: primaryFont.copyWith(
                                   color: primaryColor,
                                   fontSize: 16,
                                   fontWeight: FontWeight.w400,
                                ),
                             ),
                  ],
                ),
              ),
             const Padding(
                padding:  EdgeInsets.only(left: 15,right: 15,top: 10),
                child:  Divider(
                  thickness: 1.5,
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: (){
                    Get.to(const ReferAndEarn());
                  },
                  child: Row(
                    children: [
                     const Image(image: AssetImage("assets/icons/Group 1228.png")),
                      const SizedBox(width: 20,),
                      Text("Refer & Earn",
                                     style: primaryFont.copyWith(
                                     color: primaryColor,
                                     fontSize: 16,
                                     fontWeight: FontWeight.w400,
                                  ),
                               ),
                    ],
                  ),
                ),
              ),
             const Padding(
                padding:  EdgeInsets.only(left: 15,right: 15,top: 10),
                child:  Divider(
                  thickness: 1.5,
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: InkWell(
                        onTap: (){
                          Get.to(const PaymentRefundPolicy());
                        },
                  child: Row(
                    children: [
                     const Image(image: AssetImage("assets/icons/Group 814.png")),
                      const SizedBox(width: 20,),
                      Text("Payment & Refund Policy",
                                     style: primaryFont.copyWith(
                                     color: primaryColor,
                                     fontSize: 16,
                                     fontWeight: FontWeight.w400,
                                  ),
                               ),
                    ],
                  ),
                ),
              ),
             const Padding(
                padding:  EdgeInsets.only(left: 15,right: 15,top: 10),
                child:  Divider(
                  thickness: 1.5,
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                   const Image(image: AssetImage("assets/icons/Group 815.png")),
                    const SizedBox(width: 20,),
                    Text("FAQ",
                                   style: primaryFont.copyWith(
                                   color: primaryColor,
                                   fontSize: 16,
                                   fontWeight: FontWeight.w400,
                                ),
                             ),
                  ],
                ),
              ),
             const Padding(
                padding:  EdgeInsets.only(left: 15,right: 15,top: 10),
                child:  Divider(
                  thickness: 1.5,
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: (){
                    Get.to(const SupportScreen());
                  },
                  child: Row(
                    children: [
                      const Image(image: AssetImage("assets/icons/Group 816.png")),
                      const SizedBox(width: 20,),
                      Text("Support",
                                     style: primaryFont.copyWith(
                                     color: primaryColor,
                                     fontSize: 16,
                                     fontWeight: FontWeight.w400,
                                  ),
                               ),
                    ],
                  ),
                ),
              ),
             const Padding(
                padding:  EdgeInsets.only(left: 15,right: 15,top: 10),
                child:  Divider(
                  thickness: 1.5,
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: (){
                    _dialogBuilder(context);
                  },
                  child: Row(
                    children: [
                     const Image(image: AssetImage("assets/icons/Group 817.png")),
                      const SizedBox(width: 20,),
                      Text("Logout",
                                     style: primaryFont.copyWith(
                                     color: primaryColor,
                                     fontSize: 16,
                                     fontWeight: FontWeight.w400,
                                  ),
                               ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 100,),
              Text("Version 2.0",
                                   style: primaryFont.copyWith(
                                   color: primaryColor,
                                   fontSize: 16,
                                   fontWeight: FontWeight.w500,
                                ),
                             ),
            
        ],
      ),
    );
  }

 Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
        //  title: const Text('Basic dialog title'),
          content: const Text('Are you sure you want to Logout?'),
          actions: <Widget>[
            Text("No",
                     style: primaryFont.copyWith(
                       color: primaryColor,
                        fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                   ),
                  const SizedBox(width: 20,),
           Text("Yes",
                     style: primaryFont.copyWith(
                       color: primaryColor,
                        fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                   ),
                   const SizedBox(width: 20,),
          ],
          
        );
      },
    );
  }

}
