import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/controllers/update_kyc_controller.dart';
import 'package:meops/src/views/home_view/home_view.dart';
import 'package:meops/src/views/signUp_view/signUp_screen.dart';

void main() {
  runApp(const MyApp());
  Get.put(UpdateKycController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUpScreen(),
    );
  }
}

