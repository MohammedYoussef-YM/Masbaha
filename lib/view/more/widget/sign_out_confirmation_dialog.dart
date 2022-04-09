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
          child: Text('هل تريد تسجيل الخروج ؟'.tr, textAlign: TextAlign.center),
        ),

        Divider(height: 0, color: Colors.white),
        Row(children: [

          Expanded(child: InkWell(
            onTap: () {
              exit(0);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))),
              child: Text('نعم'.tr, style: TextStyle(color: Colors.white)),
            ),
          )),

          Expanded(child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))),
              child: Text('لا'.tr, style: TextStyle(color: Colors.white)),
            ),
          )),

        ]),
      ]),
    );
  }
}
