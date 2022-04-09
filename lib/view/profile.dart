import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'main_drawer.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
// import 'package:flutter_ui_kit/main/view/screen/wallet/widgets/appbar.dart';

// import '../../../../main_drawer.dart';

class MyProfile extends StatefulWidget {
  static const routeName = '/Profile2';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<MyProfile> {

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,  // Theme.of(context).accentColor,
        title: Text("ملفي"),
        elevation: 1,
        centerTitle: true,
        //   automaticallyImplyLeading: false,
        //    actions: [
        //      // Image.asset(Images.logo_with_name_image, height: 35, color: ColorResources.getPrimary(context)),
        //      ]
      ),
      body: Container(
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                //=========================================
                // Profile Image With Camera Icon & Name
                //=========================================
                Container(
                  height: 250.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Stack(
                            fit: StackFit.loose,
                            alignment: AlignmentDirectional.center,
                            children: <Widget>[
                              //================
                              //Profile Image
                              //================
                              _buildProfileImage(),

                              //=============
                              //Camera Icon
                              //=============
                              Padding(
                                  padding:
                                  EdgeInsets.only(top: 100.0, right: 90.0),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new CircleAvatar(
                                        backgroundColor: Colors.grey,
                                        radius: 20.0,
                                        child: new Icon(
                                          Icons.camera_alt,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      )
                                    ],
                                  )),
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Text("مكتب وائل و يوسف",style: TextStyle(fontSize: 20)),
                      ),
                    ],
                  ),
                ),


                Divider(height: 5,color: Colors.grey,),
                //=============
                //     Info
                //=============
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: Text("E-mail :",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold))),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 6.0),
                              child:
                              // Text('youssefalsodi13@gmail.com')
                            FlatButton(
                            onPressed: launchEmail,
                            child: Text("youssefalsodi13@gmail.com",style:TextStyle(color: Theme.of(context).primaryColor)),),

                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: Text("Phone Number :",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold))),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 6.0),
                              child: FlatButton(
                                onPressed: phoneCall1,
                                child: Text("00967774226619",style:TextStyle(color: Theme.of(context).primaryColor)),),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: new Text( "Country" ,
                                        // getTranslated('countries', context),
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: new Text( "City ",
                                        // getTranslated('cities', context),
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: new Text("Yemen"
                                          // getTranslated('yemen', context)
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: new Text( "Sana`a"
                                          // getTranslated('sana', context)
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ),


                //===================
                //Bottom Section
                //===================
                Directionality(
                    textDirection: TextDirection.ltr,
                    child: BottomSection())


              ],
            ),
          ],
        ),
      ),
      drawer: MainDrawer(),
    );
  }
  var phone1="+967774226619";
  var email="youssefalsodi13@gmail.com";
  Future<void> phoneCall1() async {
    var url='tel:'+phone1;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  launchEmail() {
    final Uri _emailLaunchUri = Uri(
        scheme: 'mailto',
        path: ''+email,
        queryParameters: {
          'subject': ' '
        }
    );


    launch(_emailLaunchUri.toString());

  }



  _buildProfileImage() {
    return Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 4, color: Colors.grey),
          image: DecorationImage(
            image: AssetImage("assets/images/IMG.jpg"),
            fit: BoxFit.cover,
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }
}




//=======================
// Build bottom Profile
//=======================
class BottomSection extends StatefulWidget {

  @override
  _BottomSectionState createState() => new _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> with TickerProviderStateMixin {
  List<Tab> _tabs;
  List<Widget> _pages;
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _tabs = [
      // new Tab(text: 'Gallery'),
      new Tab(text: 'Skills'),
      new Tab(text: 'About'),
    ];
    _pages = [
      // Gallery(),
      Skills(),
      About(),
    ];
    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[
          new TabBar(
            controller: _controller,
            tabs: _tabs,
            labelColor: Theme.of(context).accentColor,
            indicatorColor: Theme.of(context).primaryColor,
          ),
          new SizedBox.fromSize(
            size: const Size.fromHeight(300.0),
            child: new TabBarView(
              controller: _controller,
              children: _pages,
            ),
          ),
        ],
      ),
    );
  }
}

//==============================================================================

//===================
// Build Gallery Tab
//===================
// class Gallery extends StatelessWidget {
//   List<Widget> _buildItems() {
//     var items = <Widget>[];
//
//     for (var i = 1; i <= 4; i++) {
//        AssetImage("assets/images/_MG_0484.JPG", );
//       // items.add(image);
//     }
//     for (var i = 1; i <= 5; i++) {
//       AssetImage("assets/images/_MG_0534.JPG", );
//       // items.add(image);
//     }
//
//     return items;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var delegate = new SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 3,
//       crossAxisSpacing: 8.0,
//       mainAxisSpacing: 8.0,
//     );
//
//     return new GridView(
//       padding: const EdgeInsets.only(top: 16.0),
//       gridDelegate: delegate,
//       children: _buildItems(),
//     );
//   }
// }


//==============================================================================


//===================
// Build Skills Tab
//===================

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            LinearPercentIndicator(
              width: 170.0,
              animation: true,
              animationDuration: 1000,
              lineHeight: 16.0,
              leading:  Container(width:60,child: Text("Mobile")),
              percent: 0.80,
              linearStrokeCap: LinearStrokeCap.butt,
              progressColor: Colors.green,
            ),
            LinearPercentIndicator(
              width: 170.0,
              animation: true,
              animationDuration: 1000,
              lineHeight: 16.0,
              leading: Container(width:60,child: Text("Website")),
              percent: 0.95,
              linearStrokeCap: LinearStrokeCap.butt,
              progressColor: Colors.green,
            ),
            LinearPercentIndicator(
              width: 170.0,
              animation: true,
              animationDuration: 1000,
              lineHeight: 16.0,
              leading: Container(width:60,child: Text("Ui/Ux")),
              percent: 0.75,
              linearStrokeCap: LinearStrokeCap.butt,
              progressColor: Colors.green,
            ),
            LinearPercentIndicator(
              width: 170.0,
              animation: true,
              animationDuration: 1000,
              lineHeight: 16.0,
              leading: Container(width:60,child: Text("System Desktop")),
              percent: 0.60,
              linearStrokeCap: LinearStrokeCap.butt,
              progressColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
//==============================================================================


//===================
// Build About Tab
//===================

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var width =MediaQuery.of(context).size.width;
    return new Center(
      child: Card(
        child: Container(
          width: width,
          height: 210,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Programmer and developer of applications, '
                  'websites and systems, I have the ability to '
                 'learn quickly and work in a team spirit. I speak '
                  'English, which makes me a valuable addition '
                  'in any team.',style: TextStyle(fontSize: 18,height: 1.5),),
              // Image.network('https://i.picsum.photos/id/100/200/200.jpg',width: width,height:150,fit: BoxFit.fill),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('This is just little sammary',style: TextStyle(color:Colors.lightBlueAccent),overflow: TextOverflow.ellipsis,),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//==============================================================================