import 'dart:async';

import 'package:app/Extension/ColorExtension.dart';
import 'package:app/pages/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newDetails extends StatefulWidget {
  @override
  _newDetails createState() => new _newDetails();
}

class _newDetails extends State<newDetails> with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


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
        title:  GestureDetector(child: Row(
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
        ),onTap: (){
          Route route = MaterialPageRoute(builder: (context) => HomeScreen());
          Navigator.pushReplacement(context, route);
        },),
        backgroundColor: HexColor.fromHex("#67523A").withOpacity(1),
      ),

      body: SingleChildScrollView(child: Container(
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
               // height:600,
                decoration: BoxDecoration(
                    color: HexColor.fromHex("#C2B19D"),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: HexColor.fromHex("#707070"))),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                      child: Text(
                        'ترقية اللواء محمد صالح علي',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        'الكاتب ممدوح العوفي',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16,color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Divider(color: Colors.black,height: 2,),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Align(child: Text(
                        'يتم عرض تفاصيل الخبر هنا',
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 16,color: Colors.black),
                      ),alignment: Alignment.bottomRight,),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),),
    );
  }
}
