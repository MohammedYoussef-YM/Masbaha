import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignOutConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(mainAxisSize: MainAxisSize.min, children: [

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 50),
          child: Text('want_to_sign_out'.tr, textAlign: TextAlign.center),
        ),

        Divider(height: 0, color: Colors.tealAccent),
        Row(children: [

          Expanded(child: InkWell(
            onTap: () {
              exit(0);
              // Provider.of<AuthProvider>(context, listen: false).clearSharedData().then((condition) {
              //   exit(0);
                // Navigator.pop(context);
                // Provider.of<ProfileProvider>(context,listen: false).clearHomeAddress();
                // Provider.of<ProfileProvider>(context,listen: false).clearOfficeAddress();
                // Navigator.pop(context);
                // of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => AuthScreen()), (route) => false);
              // });
            },
            child: Container(
              padding: EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))),
              child: Text('YES'.tr, style: TextStyle(color: Colors.teal)),
            ),
          )),

          Expanded(child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))),
              child: Text('NO'.tr, style: TextStyle(color: Colors.teal)),
            ),
          )),

        ]),
      ]),
    );
  }
}
