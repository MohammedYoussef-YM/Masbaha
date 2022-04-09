import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "ar" : {
      "home" : "الصفحة الرئيسية",
      "change" : "تغيير اللغة",
      "arabic" : "عربي",
      "english" : "انجليزي",
      "counter" : "زيادة الرقم بمقدار واحد",
    },

    "en" : {
      "home" : "Homepage",
      "change" : "Change Language",
      "arabic" : "Arabic",
      "english" : "English",
      "counter" : "Counter increase",
    },
  };

}