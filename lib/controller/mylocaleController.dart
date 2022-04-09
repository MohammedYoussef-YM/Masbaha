import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

class MyLocaleController extends GetxController {

  // Locale initialLang = sharedPref.getString("lang") == null ? Get.deviceLocale : Locale(sharedPref.getString("lang"));

  void changeLang(String newLang) {
    Locale locale = Locale(newLang);
    // sharedPref .setString("lang", newLang);
    Get.updateLocale(locale);
  }

}