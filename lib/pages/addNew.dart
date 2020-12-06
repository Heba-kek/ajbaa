import 'dart:async';

import 'package:app/Extension/ColorExtension.dart';
import 'package:app/pages/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addNew extends StatefulWidget {
  @override
  _addNew createState() => new _addNew();
}

class _addNew extends State<addNew> with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _title = TextEditingController();
  final _des = TextEditingController();

  @override
  void initState() {
    // navigationPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //  extendBodyBehindAppBar: true,
      key: _scaffoldKey,
      //  backgroundColor: HexColor.fromHex("#67523A").withOpacity(1),

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
            Route route = MaterialPageRoute(builder: (context) => HomeScreen());
            Navigator.pushReplacement(context, route);
          },
        ),
        backgroundColor: HexColor.fromHex("#67523A").withOpacity(1),
      ),

      body: SingleChildScrollView(
        child: Container(
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
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: HexColor.fromHex("#C2B19D"),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: HexColor.fromHex("#707070"))),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          'أخبارنا',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: Text(
                          'إضافة خبر',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: HexColor.fromHex("#707070"))),
                          child: Theme(
                              data: new ThemeData(
                                  primaryColor: Colors.transparent,
                                  //   accentColor: Colors.orange,
                                  hintColor: Colors.transparent),
                              child: TextField(
                                textAlign: TextAlign.right,
                                controller: _title,
                                cursorColor: Colors.transparent,
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  hintText: 'عنوان الخبر',

                                  hintStyle: TextStyle(
                                    color: HexColor.fromHex("#342109")
                                        .withOpacity(0.25),
                                  ),
                                  filled: true,
                                  labelStyle: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          color:
                                              Theme.of(context).primaryColor),

                                  fillColor: Colors.transparent,

                                  //can also add icon to the end of the textfiled
                                  //  suffixIcon: Icon(Icons.remove_red_eye),
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Container(
                          height: 280,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: HexColor.fromHex("#707070"))),
                          child: Theme(
                              data: new ThemeData(
                                  primaryColor: Colors.transparent,
                                  //   accentColor: Colors.orange,
                                  hintColor: Colors.transparent),
                              child: TextField(
                                textAlign: TextAlign.right,
                                controller: _des,
                                maxLines: 100,
                                // you can change it accordingly
                                // overflow: TextOverflow.ellipsis,
                                cursorColor: Colors.transparent,
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'نص الخبر',
                                  hintStyle: TextStyle(
                                    color: HexColor.fromHex("#342109")
                                        .withOpacity(0.25),
                                  ),

                                  labelStyle: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          color:
                                              Theme.of(context).primaryColor),

                                  fillColor: Colors.transparent,

                                  //can also add icon to the end of the textfiled
                                  //  suffixIcon: Icon(Icons.remove_red_eye),
                                ),
                              )),
                        ),
                      ),
                      GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                          child: Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                                child: Text(
                                  ' أرسل',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              ),
                              // width: MediaQuery.of(context).size.width,
                              //  height: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                  color: HexColor.fromHex("#342109"),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: HexColor.fromHex("#C2B19D")))),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder: (_, __, ___) => HomeScreen(),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
