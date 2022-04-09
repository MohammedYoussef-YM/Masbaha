import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:masbaha/view/about_us.dart';
import 'package:masbaha/view/basewidget/animated_custom_dialog.dart';
import 'package:masbaha/view/home.dart';
import 'package:masbaha/view/more/widget/app_info_dialog.dart';
import 'package:masbaha/view/more/widget/sign_out_confirmation_dialog.dart';
import 'package:masbaha/view/profile.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  Widget buildListTile(String title,IconData icon,Function tabHandler){
    return ListTile(
      leading: Icon(icon,size:22),
      title: Text(title,style:TextStyle(
        fontSize: 16,
        // fontFamily: "RobotoCondensed",
        fontWeight: FontWeight.bold,
      ),),
      onTap: tabHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(

        child: Column(

// textDirection: TextDirection.rtl,
          children: [

            Container(
              height: 120,
              width: double.infinity-150,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              color: Colors.teal,
              // child: Image.asset(Images.logo_with_name_image, height: 40, width: 250,color: ColorResources.getImageBg(context)),
              child: Text("حقنا الشعار هنا"),
            ),
            SizedBox(height: 20),
            buildListTile('الصفحة الرئيسية',Icons.home,(){Navigator.push(context,MaterialPageRoute(builder: (_) => MyHomePage()));}),
            buildListTile('تغيير الثيم',Icons.settings,(){ if(Get.isDarkMode){ Get.changeTheme(ThemeData.light());}
                                                               else {Get.changeTheme(ThemeData.dark());}}),
            buildListTile('عنا',Icons.group_work,(){Navigator.push(context,MaterialPageRoute(builder: (_) => MainAboutScreen()));}),
            buildListTile('تواصل معنا',Icons.call,(){showAnimatedDialog(context, AppInfoDialog(), isFlip: true);}),
            buildListTile('ملفي',Icons.person,(){showAnimatedDialog(context, MyProfile(), isFlip: true);}),
            buildListTile('تسجيل الخروج',Icons.exit_to_app,(){showAnimatedDialog(context, SignOutConfirmationDialog(), isFlip: true);}),
          ],
        ),
      ),
    );
  }
}
