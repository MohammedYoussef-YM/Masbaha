import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:masbaha/controller/mylocaleController.dart';
import 'package:masbaha/view/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences sharedPref;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MyLocaleController controller = Get.put(MyLocaleController());
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Masbahaty getx',
      theme: ThemeData.dark(),
      locale: Get.deviceLocale,
      home: MyHomePage(),
    );
  }
}

