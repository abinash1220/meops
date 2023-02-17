import 'package:flutter/material.dart';
import 'package:meops/src/constant/app_color.dart';
import 'package:meops/src/constant/app_font.dart';

class LoaderScreen extends StatefulWidget {
  const LoaderScreen({super.key});

  @override
  State<LoaderScreen> createState() => _LoaderScreenState();
}

class _LoaderScreenState extends State<LoaderScreen> {

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage("assets/images/Vector (19).png")),
            const SizedBox(height: 25,),
            Text("Thankyou,Waiting for client approval",
                                                      style: primaryFont.copyWith(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w500,
                                                       ),
                                                    ) ,
          ],
        ),
      ),
    );
  }
}