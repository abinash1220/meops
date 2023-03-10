import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';
import 'package:meops/src/views/home_view/home_bottom_navigation_bar.dart';
import 'package:meops/src/views/intro_screens/intro_screen3.dart';

class IntroScreens2 extends StatefulWidget {
  const IntroScreens2({super.key});

  @override
  State<IntroScreens2> createState() => _IntroScreens2State();
}

class _IntroScreens2State extends State<IntroScreens2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/icons/Asset 1 9.png"),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Confidentiality of Information and\nPrivacy Protection",
              textAlign: TextAlign.center,
              style: primaryFont.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              """You can be sure that you are in safe hands. We respect\nprivacy of information and maximize usage of all vital\ninformation only for the benefit of the user. """,
              textAlign: TextAlign.center,
              style: primaryFont.copyWith(color: Colors.white, fontSize: 11),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 34, 16, 197)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Get.to(HomeBottomNavigationBar());
              },
              child: Row(
                children: [
                  Text(
                    "Skip",
                    style: primaryFont.copyWith(color: Colors.white),
                  ),
                  const Icon(
                    Icons.keyboard_double_arrow_right_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Get.to(const IntroScreens3());
              },
              child: Row(
                children: [
                  Text(
                    "Next",
                    style: primaryFont.copyWith(color: Colors.white),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
