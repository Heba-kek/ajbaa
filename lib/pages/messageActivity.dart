import 'package:app/Extension/ColorExtension.dart';
import 'package:app/pages/addImage.dart';
import 'package:app/pages/addNew.dart';
import 'package:app/pages/messageDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class messageActivity extends StatefulWidget {
  @override
  _messageActivity createState() => _messageActivity();
}

class _messageActivity extends State<messageActivity> {
  String selected = '0';

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
    return Stack(
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
                          border:
                              Border.all(color: HexColor.fromHex("#707070"))),
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
                          GestureDetector(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(30, 10, 20, 10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      new Spacer(),
                                      Text(
                                        'برقية اللواء محمد صالح علي',
                                        textAlign: TextAlign.left,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 15, 5),
                                    child: Row(
                                      children: <Widget>[
                                        new Spacer(),
                                        Text(
                                          'المرسل ممدوح العوفي',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: Divider(
                                      color: Colors.black,
                                      height: 1,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(
                                PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => messageDetails(),
                                ),
                              );
                            },
                          ),
                          GestureDetector(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(30, 10, 20, 10),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      new Spacer(),
                                      Text(
                                        'برقية اللواء محمد صالح علي',
                                        textAlign: TextAlign.left,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 15, 5),
                                    child: Row(
                                      children: <Widget>[
                                        new Spacer(),
                                        Text(
                                          'المرسل ممدوح العوفي',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: Divider(
                                      color: Colors.black,
                                      height: 1,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(
                                PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => messageDetails(),
                                ),
                              );
                            },
                          ),

                        ],
                      ),
                    ),
                  ),
                  Padding(child: Align(
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
                  ),padding: EdgeInsets.all(10),)
                ],
              ),
            ))
      ],
    );
  }
}
