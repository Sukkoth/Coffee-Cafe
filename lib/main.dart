import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/controllers/auth_controller.dart';
import 'package:coffe_shop/controllers/cart_controller.dart';
import 'package:coffe_shop/controllers/index_pages_controller.dart';
import 'package:coffe_shop/controllers/payment_controller.dart';
import 'package:coffe_shop/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  Get.put(AuthController());
  Get.put(IndexPageController());
  Get.put(PaymentController());
  Get.put(CartController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            foregroundColor: Colors.white,
          ),
          primaryColor: MyColors.primary,
          primarySwatch: Colors.amber,
          datePickerTheme: const DatePickerThemeData(
            headerForegroundColor: Colors.white,
          )),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      getPages: Routes.routes,
    );
  }
}
