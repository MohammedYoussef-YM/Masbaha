import 'package:flutter/material.dart';
import 'package:masbaha/controller/mylocaleController.dart';
// import 'package:sixvalley_ui_kit/helper/network_info.dart';
// import 'package:sixvalley_ui_kit/localization/language_constrants.dart';
// import 'package:sixvalley_ui_kit/provider/splash_provider.dart';
// import 'package:sixvalley_ui_kit/provider/theme_provider.dart';
// import 'package:sixvalley_ui_kit/utill/color_resources.dart';
// import 'package:sixvalley_ui_kit/utill/custom_themes.dart';
// import 'package:sixvalley_ui_kit/utill/dimensions.dart';
// import 'package:sixvalley_ui_kit/utill/images.dart';
// import 'package:sixvalley_ui_kit/utill/string_resources.dart';
import 'package:masbaha/view/basewidget/custom_expanded_app_bar.dart';
import 'package:masbaha/view/basewidget/animated_custom_dialog.dart';
import 'package:masbaha/view/screen/setting/widget/currency_dialog.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // NetworkInfo.checkConnectivity(context);
    // Provider.of<SplashProvider>(context, listen: false).setFromSetting(true);
    MyLocaleController controllerLang = Get.find();

    return WillPopScope(
      onWillPop: () {
        // Provider.of<SplashProvider>(context, listen: false).setFromSetting(false);
        return Future.value(true);
      },
      child: CustomExpandedAppBar(
          title: 'Settings'.tr,


          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

        Expanded(
            child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 12),
          children: [
            Center(
            child: MaterialButton(
            color: Colors.teal,
              textColor:Colors.white,
              onPressed: (){
                if(Get.isDarkMode){
                  Get.changeTheme(ThemeData.light());
                } else {
                  Get.changeTheme(ThemeData.dark());
                }
              },
              child: Text("change_theme".tr),
            ),
        ),
            // SwitchListTile(
            //   // value: Provider.of<ThemeProvider>(context).darkTheme,
            //   //   value: ,
            //    onChanged:  if(Get.isDarkMode){
            //      Get.changeTheme(ThemeData.light());
            //       } else {
            //      Get.changeTheme(ThemeData.dark());
            //      },
            //       // (bool isActive) =>Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
            //   title: Text('dark_theme', style: TextStyle(fontSize: 16)),
            // ),

            Container(
              margin: EdgeInsets.only(top: 20),
              width: 120,
              // color: Colors.tealAccent,
              child: Column(
                children: [
                  Center(
                    child: Text("change language".tr),
                  ),
                  Center(
                    child: MaterialButton(
                      color: Colors.teal,
                      textColor:Colors.white,
                      onPressed: (){
                        controllerLang.changeLang("ar");
                      },
                      child: Text("arabic".tr),
                    ),
                  ),
                  Center(
                    child: MaterialButton(
                      color: Colors.teal,
                      textColor:Colors.white,
                      onPressed: (){
                        controllerLang.changeLang("en");
                      },
                      child: Text("english".tr),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),

      ])),
    );
  }

}

class TitleButton extends StatelessWidget {
  final String image;
  final String title;
  final Function onTap;
  TitleButton({@required this.image, @required this.title, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image, width: 25, height: 25, fit: BoxFit.fill, color: Colors.teal),
      title: Text(title, style: TextStyle(fontSize: 16)),
      onTap: onTap,
    );
  }
}

