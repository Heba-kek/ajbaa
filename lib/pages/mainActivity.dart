import 'package:app/Extension/ColorExtension.dart';
import 'package:app/pages/addImage.dart';
import 'package:app/pages/addNew.dart';
import 'package:app/pages/baxActivity.dart';
import 'package:app/pages/boxPage.dart';
import 'package:app/pages/contactHome.dart';
import 'package:app/pages/contactPage.dart';
import 'package:app/pages/imageHome.dart';
import 'package:app/pages/imagePage.dart';
import 'package:app/pages/newDetails.dart';
import 'package:app/pages/newHome.dart';
import 'package:app/pages/newPage.dart';
import 'package:app/pages/treeHome.dart';
import 'package:app/pages/treePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  String selected = '0';
  bool _value = false;
  bool _valuet = false;

  final _texto = TextEditingController();
  final _textt = TextEditingController();
  final _textth = TextEditingController();
  final _textf = TextEditingController();
  final _textfi = TextEditingController();
  final _texts = TextEditingController();
  final _textn = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
    Stack(

      children: <Widget>[Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill)),
        child:
    Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    color: HexColor.fromHex("#271F0D").withOpacity(0.47),
    child:
       SingleChildScrollView(child: Stack(
          children: <Widget>[

            Container(
              width: MediaQuery.of(context).size.width,
              //  height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                child: Row(
                  children: <Widget>[
                    new Spacer(),
                    Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(5),
                            child: GestureDetector(
                              child: Container(
                                width: 179,
                                decoration: BoxDecoration(
                                    color: HexColor.fromHex("#C2B19D")
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: HexColor.fromHex("#1B150B")
                                            .withOpacity(1),
                                        width: 1)),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                      EdgeInsets.fromLTRB(0, 2, 0, 0),
                                      child: Image.asset(
                                        'assets/images/mic.png',
                                        height: 50,
                                      ),
                                    ),
                              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),child:    Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        gradient: new LinearGradient(
                                          colors: [
                                            const Color(0xFF88745E),
                                            const Color(0xFF4B4033),
                                          ],
                                        ),
                                      ),
                                      child: Text(
                                        ' أخبارنا',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  Navigator.of(context).push(
                                    PageRouteBuilder(
                                      pageBuilder: (_, __, ___) => newHome(),
                                    ),
                                  );                                });
                              },
                            )),
                        Padding(
                            padding: EdgeInsets.all(5),
                            child: GestureDetector(
                              child: Container(
                                width: 179,
                                decoration: BoxDecoration(
                                    color: HexColor.fromHex("#C2B19D")
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: HexColor.fromHex("#1B150B")
                                            .withOpacity(1),
                                        width: 1)),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                      EdgeInsets.fromLTRB(0, 2, 0, 0),
                                      child: Image.asset(
                                        'assets/images/boxi.png',
                                        height: 50,
                                      ),
                                    ),
                                   Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),child:  Container(
                                     width: MediaQuery.of(context).size.width,
                                     decoration: BoxDecoration(
                                       gradient: new LinearGradient(
                                         colors: [
                                           const Color(0xFF88745E),
                                           const Color(0xFF4B4033),
                                         ],
                                       ),
                                     ),
                                     child: Text(
                                       'صندوق التضامن',
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontWeight: FontWeight.bold,
                                           fontSize: 20),
                                       textAlign: TextAlign.center,
                                     ),
                                   ),)
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  Navigator.of(context).push(
                                    PageRouteBuilder(
                                      pageBuilder: (_, __, ___) => boxHome(),
                                    ),
                                  );                                });
                              },
                            )),
                        Padding(
                            padding: EdgeInsets.all(5),
                            child: GestureDetector(
                              child: Container(
                               // height: 105,
                                width: 179,
                                decoration: BoxDecoration(
                                    color: HexColor.fromHex("#C2B19D")
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: HexColor.fromHex("#1B150B")
                                            .withOpacity(1),
                                        width: 1)),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                      EdgeInsets.fromLTRB(8, 2, 3, 0),
                                      child: Image.asset(
                                        'assets/images/conn.png',
                                        height: 50,
                                      ),
                                    ),
                              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),child:    Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        gradient: new LinearGradient(
                                          colors: [
                                            const Color(0xFF88745E),
                                            const Color(0xFF4B4033),
                                          ],
                                        ),
                                      ),
                                      child: Text(
                                        'تواصلنا',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (_, __, ___) => contactHome(),
                                  ),
                                );
                              },
                            )),
                        Padding(
                            padding: EdgeInsets.all(5),
                            child: GestureDetector(
                              child: Container(
                               // height: 105,
                                width: 179,
                                decoration: BoxDecoration(
                                    color: HexColor.fromHex("#C2B19D")
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: HexColor.fromHex("#1B150B")
                                            .withOpacity(1),
                                        width: 1)),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                      EdgeInsets.fromLTRB(0, 2, 0, 0),
                                      child: Row(
                                        children: <Widget>[
                                          Image.asset(
                                            'assets/images/photo.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                          Image.asset(
                                            'assets/images/cam.png',
                                            height: 50,
                                            width: 70,
                                          ),
                                        ],
                                      ),
                                    ),
                              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),child:  Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        gradient: new LinearGradient(
                                          colors: [
                                            const Color(0xFF88745E),
                                            const Color(0xFF4B4033),
                                          ],
                                        ),
                                      ),
                                      child: Text(
                                        'صور وأفراح',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (_, __, ___) => imageHome(),
                                  ),
                                );
                              },
                            )),
                        Padding(
                            padding: EdgeInsets.all(5),
                            child: GestureDetector(
                              child: Container(
                              //  height: 105,
                                width: 179,
                                decoration: BoxDecoration(
                                    color: HexColor.fromHex("#C2B19D")
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: HexColor.fromHex("#1B150B")
                                            .withOpacity(1),
                                        width: 1)),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                      EdgeInsets.fromLTRB(0, 2, 0, 0),
                                      child: Image.asset(
                                        'assets/images/tree.png',
                                        fit: BoxFit.fill,
                                        height: 50,
                                        width: 139,
                                      ),
                                    ),
                              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),child:   Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        gradient: new LinearGradient(
                                          colors: [
                                            const Color(0xFF88745E),
                                            const Color(0xFF4B4033),
                                          ],
                                        ),
                                      ),
                                      child: Text(
                                        ' شجرة العائلة',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (_, __, ___) => treeHome(),
                                  ),
                                );
                              },
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),)
           ,
    ) )],);
  }
}
