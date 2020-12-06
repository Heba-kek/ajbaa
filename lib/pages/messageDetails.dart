import 'package:app/Extension/ColorExtension.dart';
import 'package:app/pages/addImage.dart';
import 'package:app/pages/addNew.dart';
import 'package:app/pages/homePage.dart';
import 'package:app/pages/newDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class messageDetails extends StatefulWidget {
  @override
  _messageDetails createState() => _messageDetails();
}

class _messageDetails extends State<messageDetails> {
  String selected = '0';
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
    return Scaffold(
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
              Route route =
                  MaterialPageRoute(builder: (context) => HomeScreen());
              Navigator.pushReplacement(context, route);
            },
          ),
          backgroundColor: HexColor.fromHex("#67523A").withOpacity(1),
        ),
        body: Stack(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: HexColor.fromHex("#271F0D").withOpacity(0.47),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                              color: HexColor.fromHex("#C2B19D"),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: HexColor.fromHex("#707070"))),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                                child: Text(
                                  'رسائل',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 22),
                                ),
                              ),
                              Padding(padding: EdgeInsets.fromLTRB(40,10, 10, 10),child: Container(
                                  width: 326,
                                  height: 88,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/msgsend.png'),
                                          fit: BoxFit.fill)),
                                  child: Padding(padding: EdgeInsets.all(20),child:
                                  Text('السلام عليكم',textAlign: TextAlign.end,),)),),
                              Padding(child: Container(
                                  width: 326,
                                  height: 88,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/msgRe.png'),
                                          fit: BoxFit.fill)),
                                  child: Padding(padding: EdgeInsets.all(20),child:
                                  Text('وعليكم السلام',textAlign: TextAlign.start,style: TextStyle(color:
                                  Colors.white),),)),padding: EdgeInsets.fromLTRB(10,10, 40, 10),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        child: Align(
                          child: Padding(
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: HexColor.fromHex("#707070"),
                                        width: 1)),
                                child: Row(
                                  children: [
                                    Padding(
                                      child: Image.asset(
                                          'assets/images/sendicon.png'),
                                      padding:
                                          EdgeInsets.fromLTRB(10, 20, 10, 20),
                                    )
                                  ],
                                )),
                            padding: EdgeInsets.all(20),
                          ),
                          alignment: Alignment.bottomCenter,
                        ),
                        padding: EdgeInsets.all(10),
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}
