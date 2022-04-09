import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:masbaha/view/about_us.dart';
import 'package:masbaha/view/basewidget/animated_custom_dialog.dart';
import 'package:masbaha/view/home.dart';
import 'package:masbaha/view/more/widget/app_info_dialog.dart';
import 'package:masbaha/view/more/widget/sign_out_confirmation_dialog.dart';
import 'package:masbaha/view/profile.dart';
import 'package:masbaha/view/screen/setting/settings_screen.dart';
// import 'package:sixvalley_ui_kit/localization/language_constrants.dart';
// import 'package:sixvalley_ui_kit/utill/color_resources.dart';
// import 'package:sixvalley_ui_kit/utill/images.dart';
// import 'package:sixvalley_ui_kit/view/screen/more/widget/sign_out_confirmation_dialog.dart';
// import 'package:sixvalley_ui_kit/view/screen/profile.dart';
// import 'package:sixvalley_ui_kit/view/screen/setting/settings_screen.dart';
// import 'about_us.dart';
// import 'home/home_screen.dart';
// import 'more/widget/app_info_dialog.dart';

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
              child: Text("Happy"),
            ),
            SizedBox(height: 20),
            buildListTile('home',Icons.home,(){Navigator.push(context,MaterialPageRoute(builder: (_) => MyHomePage()));}),
            buildListTile('settings',Icons.settings,(){Navigator.push(context,MaterialPageRoute(builder: (_) => SettingsScreen()));}),
            buildListTile('about_us',Icons.group_work,(){Navigator.push(context,MaterialPageRoute(builder: (_) => MainAboutScreen()));}),
            buildListTile('contact_us',Icons.call,(){showAnimatedDialog(context, AppInfoDialog(), isFlip: true);}),
            buildListTile('my_profile',Icons.person,(){showAnimatedDialog(context, MyProfile(), isFlip: true);}),
            buildListTile('sign_out',Icons.exit_to_app,(){showAnimatedDialog(context, SignOutConfirmationDialog(), isFlip: true);}),
          ],
        ),
      ),
    );
  }
}
