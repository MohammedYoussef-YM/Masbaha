import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:sixvalley_ui_kit/provider/auth_provider.dart';
// import 'package:sixvalley_ui_kit/provider/theme_provider.dart';
// import 'package:sixvalley_ui_kit/utill/color_resources.dart';
// import 'package:sixvalley_ui_kit/utill/custom_themes.dart';
// import 'package:sixvalley_ui_kit/utill/dimensions.dart';
// import 'package:sixvalley_ui_kit/utill/images.dart';
// import 'package:sixvalley_ui_kit/view/basewidget/not_loggedin_widget.dart';
// import 'package:provider/provider.dart';

class CustomExpandedAppBar extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget bottomChild;
  final bool isGuestCheck;
  CustomExpandedAppBar({@required this.title, @required this.child, this.bottomChild, this.isGuestCheck = false});

  @override
  Widget build(BuildContext context) {
    // bool isGuestMode = !Provider.of<AuthProvider>(context, listen: false).isLoggedIn();

    return Scaffold(
      // floatingActionButton: isGuestCheck ? isGuestMode ? null : bottomChild : bottomChild,
      body: Stack(
          children: [
        // Background
        Image.asset(
          "Images.more_page_header", height: 150, fit: BoxFit.fill, width: MediaQuery.of(context).size.width,
          // color: Provider.of<ThemeProvider>(context).darkTheme ? Colors.black : null,
           color: Colors.teal,
        ),

        Positioned(
          top: 40,
          left: 10,
          right: 10,
          child: Row(
              children: [
            CupertinoNavigationBarBackButton( color: Colors.grey, onPressed: () => Navigator.pop(context) ),
            Text(title, style: TextStyle(fontSize: 20), maxLines: 1, overflow: TextOverflow.ellipsis),
          ]),
        ),

        Container(
          margin: EdgeInsets.only(top: 120),
          decoration: BoxDecoration(
            // color: Colors.teal,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: child,
        ),
      ]),
    );
  }
}
