import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/client/client_views/client_home_view/client_navbar.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class ClientAvatharScreen extends StatefulWidget {
  const ClientAvatharScreen({super.key});

  @override
  State<ClientAvatharScreen> createState() => _ClientAvatharScreenState();
}

class _ClientAvatharScreenState extends State<ClientAvatharScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: Container(
          height: 90,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius:const  BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              )),
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Choose Your Avatar",
                  style: primaryFont.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Center(child: Image.asset("assets/images/Group 1209.png")),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: InkWell(
          onTap: (){
            Get.to( ClientBottomNavBar(index: 3,));
          },
          child: Container(
            height: 43,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: primaryColor),
            alignment: Alignment.center,
            child: Text(
              "Save",
              style: primaryFont.copyWith(
                  color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
