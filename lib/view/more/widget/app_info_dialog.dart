import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class AppInfoDialog extends StatefulWidget {

  @override
  _AppInfoDialogState createState() => _AppInfoDialogState();
}

class _AppInfoDialogState extends State<AppInfoDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        ),
      child: Dialog(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('تواصل معنا'.tr, style: TextStyle(fontSize: 14)),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).accentColor,
                          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 1, blurRadius: 7, offset: Offset(0, 1))],
                        ),
                        child: Icon(Icons.clear, size: 18, color: Colors.black)),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: .1, color: Colors.teal),
              // SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('يوسف السودي'),
                  // Text('00967772270377', style: titilliumSemiBold.copyWith(fontSize: Dimensions.FONT_SIZE_LARGE)),
                  FlatButton(
                    onPressed: phoneCall1,
                    child: Text("00967774226619",style:TextStyle(color: Theme.of(context).primaryColor)),),
                ],
              ),
              // SizedBox(height: 10,),
              Divider(thickness: .1, color: Colors.teal),
              // SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('وائل المغاربي'),
                  FlatButton(
                    onPressed: phoneCall2,
                    child: Text("00967771981596",style:TextStyle(color: Theme.of(context).primaryColor)),),
                ],
              ),
              // SizedBox(height: 10,),
              Divider(thickness: .1, color: Colors.teal),
            ],
          ),
        ),
      ),
    );
  }

  var phone1="+967776007860";
  var phone2="+967774226619";
  Future<void> phoneCall1() async {
    var url='tel:'+phone1;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  Future<void> phoneCall2() async {
    var url='tel:'+phone2;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
