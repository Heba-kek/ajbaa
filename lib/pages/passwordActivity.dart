import 'package:app/Extension/ColorExtension.dart';
import 'package:app/pages/homePage.dart';
import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class passwordA extends StatefulWidget {
  @override
  _passwordA createState() => new _passwordA();
}

class _passwordA extends State<passwordA> with SingleTickerProviderStateMixin {
  final _num = TextEditingController();
  final _numt = TextEditingController();
  final _numth = TextEditingController();
  final _numf = TextEditingController();

  @override
  void initState() {}

  @override
  Widget build(BuildContext contextt) {
    return new Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill)),
            child: Stack(
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: HexColor.fromHex("#271F0D").withOpacity(0.47),
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                          child: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 50, 10, 40),
                                              child: Container(
                                                width: 349,
                                                height: 6,
                                                color:
                                                    HexColor.fromHex("#C2B19D")
                                                        .withOpacity(1),
                                              ),
                                            ),
                                          ],
                                        )),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 10, 0),
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                new Spacer(),
                                                Column(
                                                  children: <Widget>[
                                                    Container(
                                                      width: 176,
                                                      height: 141,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                              'assets/images/logo.png',
                                                            ),
                                                            fit: BoxFit.fill),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  15, 10, 15, 0),
                                              child: Center(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: HexColor.fromHex(
                                                              "#48341A")
                                                          .withOpacity(0.4),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      border: Border.all(
                                                          color:
                                                              HexColor.fromHex(
                                                                      "#707070")
                                                                  .withOpacity(
                                                                      0.4))),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            30, 30, 30, 30),
                                                    child: Container(
                                                      child: Column(
                                                        children: <Widget>[
                                                          Text(
                                                            'فضلا ادخل كلمة المرور',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 17),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(10,
                                                                    30, 10, 30),
                                                            child: Container(
                                                              width:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5),
                                                                      child: Container(
                                                                          // width: 68,
                                                                          height: 50,
                                                                          child: Center(
                                                                            child: Theme(
                                                                                data: new ThemeData(
                                                                                    primaryColor: Colors.transparent,
                                                                                    // accentColor: Colors.orange,
                                                                                    hintColor: Colors.transparent),
                                                                                child: TextField(
                                                                                  textAlign: TextAlign.center,
                                                                                  controller: _num,
                                                                                  maxLength: 1,
                                                                                  cursorColor: Colors.transparent,
                                                                                  style: TextStyle(color: Colors.black),
                                                                                  decoration: InputDecoration(
                                                                                    contentPadding: EdgeInsets.only(bottom: 0.0),

                                                                                    filled: true,
                                                                                    labelStyle: Theme.of(context).textTheme.caption.copyWith(color: Theme.of(context).primaryColor),

                                                                                    fillColor: Colors.transparent,
                                                                                    //can also add icon to the end of the textfiled
                                                                                    //  suffixIcon: Icon(Icons.remove_red_eye),
                                                                                  ),
                                                                                )),
                                                                          ),
                                                                          decoration: BoxDecoration(
                                                                            color:
                                                                                HexColor.fromHex("#C2B19D").withOpacity(1),
                                                                            borderRadius:
                                                                                BorderRadius.circular(15),
                                                                          )),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5),
                                                                      child: Container(
                                                                          // width: 68,
                                                                          height: 50,
                                                                          child: Padding(
                                                                            padding: EdgeInsets.fromLTRB(
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Center(
                                                                              child: Theme(
                                                                                  data: new ThemeData(
                                                                                      primaryColor: Colors.transparent,
                                                                                      //   accentColor: Colors.orange,
                                                                                      hintColor: Colors.transparent),
                                                                                  child: TextField(
                                                                                    textAlign: TextAlign.center,
                                                                                    controller: _numt,
                                                                                    maxLength: 1,
                                                                                    cursorColor: Colors.transparent,
                                                                                    style: TextStyle(color: Colors.black),
                                                                                    decoration: InputDecoration(
                                                                                      filled: true,
                                                                                      contentPadding: EdgeInsets.only(bottom: 0.0),

                                                                                      labelStyle: Theme.of(context).textTheme.caption.copyWith(color: Theme.of(context).primaryColor),

                                                                                      fillColor: Colors.transparent,

                                                                                      //can also add icon to the end of the textfiled
                                                                                      //  suffixIcon: Icon(Icons.remove_red_eye),
                                                                                    ),
                                                                                  )),
                                                                            ),
                                                                          ),
                                                                          decoration: BoxDecoration(
                                                                            color:
                                                                                HexColor.fromHex("#C2B19D").withOpacity(1),
                                                                            borderRadius:
                                                                                BorderRadius.circular(15),
                                                                          )),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5),
                                                                      child: Container(
                                                                          // width: 68,
                                                                          height: 50,
                                                                          child: Padding(
                                                                            padding: EdgeInsets.fromLTRB(
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Center(
                                                                              child: Theme(
                                                                                  data: new ThemeData(
                                                                                      primaryColor: Colors.transparent,
                                                                                      //   accentColor: Colors.orange,
                                                                                      hintColor: Colors.transparent),
                                                                                  child: TextField(
                                                                                    textAlign: TextAlign.center,
                                                                                    controller: _numth,
                                                                                    maxLength: 1,
                                                                                    cursorColor: Colors.transparent,
                                                                                    style: TextStyle(color: Colors.black),
                                                                                    decoration: InputDecoration(
                                                                                      filled: true,
                                                                                      contentPadding: EdgeInsets.only(bottom: 0.0),

                                                                                      labelStyle: Theme.of(context).textTheme.caption.copyWith(color: Theme.of(context).primaryColor),

                                                                                      fillColor: Colors.transparent,

                                                                                      //can also add icon to the end of the textfiled
                                                                                      //  suffixIcon: Icon(Icons.remove_red_eye),
                                                                                    ),
                                                                                  )),
                                                                            ),
                                                                          ),
                                                                          decoration: BoxDecoration(
                                                                            color:
                                                                                HexColor.fromHex("#C2B19D").withOpacity(1),
                                                                            borderRadius:
                                                                                BorderRadius.circular(15),
                                                                          )),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5),
                                                                      child: Container(
                                                                          // width: 68,
                                                                          height: 50,
                                                                          child: Padding(
                                                                            padding: EdgeInsets.fromLTRB(
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Center(
                                                                              child: Theme(
                                                                                  data: new ThemeData(
                                                                                      primaryColor: Colors.transparent,
                                                                                      //   accentColor: Colors.orange,
                                                                                      hintColor: Colors.transparent),
                                                                                  child: TextField(
                                                                                    textAlign: TextAlign.center,
                                                                                    controller: _numf,
                                                                                    maxLength: 1,
                                                                                    cursorColor: Colors.transparent,
                                                                                    style: TextStyle(color: Colors.black),
                                                                                    decoration: InputDecoration(
                                                                                      filled: true,
                                                                                      contentPadding: EdgeInsets.only(bottom: 0.0),

                                                                                      labelStyle: Theme.of(context).textTheme.caption.copyWith(color: Theme.of(context).primaryColor),

                                                                                      fillColor: Colors.transparent,

                                                                                      //can also add icon to the end of the textfiled
                                                                                      //  suffixIcon: Icon(Icons.remove_red_eye),
                                                                                    ),
                                                                                  )),
                                                                            ),
                                                                          ),
                                                                          decoration: BoxDecoration(
                                                                            color:
                                                                                HexColor.fromHex("#C2B19D").withOpacity(1),
                                                                            borderRadius:
                                                                                BorderRadius.circular(15),
                                                                          )),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          30),
                                                              child: Container(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            70,
                                                                            5,
                                                                            70,
                                                                            5),
                                                                    child: Text(
                                                                      'دخول',
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: HexColor.fromHex(
                                                                            "#342109")
                                                                        .withOpacity(
                                                                            1),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  )),
                                                            ),
                                                            onTap: () {
                                                              Route route =
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              HomeScreen());
                                                              Navigator
                                                                  .pushReplacement(
                                                                      context,
                                                                      route);

                                                              // Navigator.pop(context);
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                      //height: 260,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'الأجبع V 1:0',
                            style: GoogleFonts.stardosStencil(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                        )
                      ],
                    )),
              ],
            )));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
