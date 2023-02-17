import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meops/src/controllers/category_controller.dart';
import 'package:meops/src/controllers/update_kyc_controller.dart';
import 'package:meops/src/views/explore_view/explore_view.dart';
import 'package:meops/src/views/favorite_screen_view/favorites_view.dart';
import 'package:meops/src/views/signUp_view/signUp_screen.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'src/views/payment_screens/payment_confirmation_screen/payment_confirmation_screen.dart';
import 'src/views/transaction_and_saved_card_views/transactions_and_saved_view.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
  Get.put(UpdateKycController());
  Get.put(CategoryController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meops',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUpScreen(),
      // home: (),
    );
  }
}
