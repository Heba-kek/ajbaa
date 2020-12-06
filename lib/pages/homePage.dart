import 'dart:async';

import 'package:app/Extension/ColorExtension.dart';
import 'package:app/pages/contactPage.dart';
import 'package:app/pages/imagePage.dart';
import 'package:app/pages/mainActivity.dart';
import 'package:app/pages/boxPage.dart';
import 'package:app/pages/messageActivity.dart';
import 'package:app/pages/messageDrawer.dart';
import 'package:app/pages/newPage.dart';
import 'package:app/pages/treePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DrawerItem {
  String title;

  // ImageIcon icon;

// Save a value
  DrawerItem(this.title);
}

PageController controller;
int currentpage = 0;

class HomeScreen extends StatefulWidget {
  final drawerItemEn = [
    new DrawerItem('الصفحة الرئيسية'),
    new DrawerItem(' صندوق التضامن'),
    new DrawerItem('تواصلنا'),
    new DrawerItem('صور وأفراح'),
    new DrawerItem('شجرة العائلة'),
    new DrawerItem('أخبارنا'),
    new DrawerItem('الرسائل')
  ];
  final drawerItemsAr = [
    new DrawerItem('الصفحة الرئيسية'),
    new DrawerItem(' صندوق التضامن'),
    new DrawerItem('تواصلنا'),
    new DrawerItem('صور وأفراح'),
    new DrawerItem('شجرة العائلة'),
    new DrawerItem('أخبارنا'),
    new DrawerItem('الرسائل')
  ];

  HomeScreen();

  @override
  HomeFragment createState() => new HomeFragment();
}

class HomeFragment extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _selectedDrawerIndex = 0;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Widget currentPage;

  var one;
  PageController pageController;

  List<Widget> pages;
  var drawerOptions = <Widget>[];

  Future navigationPage() async {
    for (var i = 0; i < widget.drawerItemsAr.length; i++) {
      var d = widget.drawerItemsAr[i];

      drawerOptions.add(new ListTile(
        title: new Text(
          d.title,
          textAlign: TextAlign.right,
          style: TextStyle(color: Colors.black),
        ),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }
  }

  @override
  void initState() {
    navigationPage();
    super.initState();
    one = MainActivity();
    pages = new List<Widget>();

    pages = [one];
    currentPage = one;
    pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new MainActivity();
      case 1:
        return new boxActivity();
      case 2:
        return new contactActivity();
      case 3:
        return new imageActivity();
      case 4:
        return new treeActivity();
      case 5:
        return new NewActivity();
      case 6:
        return new messageActivity();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  void dispose() {
    super.dispose();
  }

  var hide = true;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        child: Scaffold(
          //  extendBodyBehindAppBar: true,
          key: _scaffoldKey,
          //  backgroundColor: HexColor.fromHex("#67523A").withOpacity(1),
          drawer: new Drawer(
              child: new SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: HexColor.fromHex("#715C44").withOpacity(1),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 50, 0, 10),
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: 133,
                          width: 162,
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: new LinearGradient(
                            colors: [
                              const Color(0xFFBDAC98),
                              const Color(0xFF554026),
                            ],
                          )),
                          child: Divider(
                            height: 2,
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              child: Text(
                                'ممدوح محمد ماكن العوفي',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.rtl,
                              ),
                              padding: EdgeInsets.fromLTRB(15, 0, 15, 5),
                            ),
                            width: MediaQuery.of(context).size.width,
                          ),
                          Text('رقم الجوال'),
                         GestureDetector(child: Padding(
                           padding: EdgeInsets.all(10),child:  Image.asset('assets/images/msg.png',width: 37,height: 25,),),onTap: (){
                           Route route =
                           MaterialPageRoute(builder: (context) => messageDrawer());
                           Navigator.pushReplacement(context, route);
                         },)
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: new LinearGradient(
                                colors: [
                                  const Color(0xFFBDAC98),
                                  const Color(0xFF554026),
                                ],
                              )),
                          child: Divider(
                            height: 2,
                          ),
                        )),

                    /* new DrawerHeader(
              decoration: BoxDecoration(
                color: HexColor.fromHex("#715C44").withOpacity(1),
              ),
              child: Center(child: Image.asset(
                'assets/images/logo.png',

              ),),
            ),*/
                    new Column(children: drawerOptions),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: new LinearGradient(
                            colors: [
                              const Color(0xFFBDAC98),
                              const Color(0xFF554026),
                            ],
                          )),
                          child: Divider(
                            height: 2,
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Center(
                          child: Text(
                            'لأي استفسار يمكنكم التواصل عبر الواتس آب',
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Center(
                          child: Image.asset('assets/images/whats.png'),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: new LinearGradient(
                            colors: [
                              const Color(0xFFBDAC98),
                              const Color(0xFF554026),
                            ],
                          )),
                          child: Divider(
                            height: 2,
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Center(
                          child: Text(
                            'سيتم تطوير التطبيق بعد النسخة الأولى لأي ملاحظات الكتابة بكروب الجبعان . التطبيق خاص بأبناء الأجبع يرجى المحافظة على البيانات وكل شخص مسؤول عن بياناته',
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          )),

          appBar: AppBar(
            //  centerTitle: true,  automaticallyImplyLeading: false,
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 85,
                  height: 70,
                ),
              ),
            ],
            title: GestureDetector(
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: HexColor.fromHex("#48341A").withOpacity(0.4),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(Icons.home),
                  )
                ],
              ),
              onTap: () {
                Route route =
                    MaterialPageRoute(builder: (context) => HomeScreen());
                Navigator.pushReplacement(context, route);
              },
            ),
            backgroundColor: HexColor.fromHex("#67523A").withOpacity(1),
          ),

          body: _getDrawerItemWidget(_selectedDrawerIndex),
        ),
        onWillPop: () {
          SystemNavigator.pop();
        });
  }
}
