import 'package:app/Extension/ColorExtension.dart';
import 'package:app/pages/loginActivity.dart';
import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  @override
  _Splash createState() => new _Splash();
}

class _Splash extends State<Splash> with SingleTickerProviderStateMixin {
  String sessionId, urlDou, idu;
  String _platformVersion = 'Unknown';
  String _projectVersion = '';
  String _projectCode = '';
  String _projectAppID = '';
  String _projectName = '';
  String isversion;
  Animation<double> animation;
  String langSave;
  AnimationController animationController;
  var _visible = true;

  startTime() async {
    var _duration = new Duration(seconds: 4);

    return new Timer(_duration, navigationPage);
  }

  @override
  void initState() {
    //  navigationPage();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 10));

    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));

    animationController.forward();

    setState(() {
      _visible = !_visible;
    });

    startTime();
  }

  Future navigationPage() async {
    Route route = MaterialPageRoute(builder: (context) =>

        Directionality(
            textDirection:
            langSave == 'ar' ? TextDirection.rtl : TextDirection.ltr,
            child: login()
        ));
    Navigator.pushAndRemoveUntil(context, route, (route) => false);
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
  }

  @override
  Widget build(BuildContext contextt) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 100, 10, 0),
            child: Row(
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Row(
                        children: <Widget>[
                          Countup(
                            begin: 0,
                            end: 100,
                            duration: Duration(seconds: 10),
                            separator: ',',
                            style: GoogleFonts.abel(
                                fontWeight: FontWeight.bold,
                                fontSize: 55,
                                color:
                                    HexColor.fromHex("#C2B19D").withOpacity(1)),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Text('%',
                                  style: GoogleFonts.abel(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 65,
                                      color: HexColor.fromHex("#C2B19D")
                                          .withOpacity(1))))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
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
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: HexColor.fromHex("#271F0D").withOpacity(0.47),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
