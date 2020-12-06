import 'package:app/Extension/ColorExtension.dart';
import 'package:app/pages/addImage.dart';
import 'package:app/pages/addNew.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class imageActivity extends StatefulWidget {
  @override
  _imageActivity createState() => _imageActivity();
}

class _imageActivity extends State<imageActivity> {
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
              Stack(
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
                          Stack(
                            children: <Widget>[
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      0, 10, 0, 5),
                                  child: Text(
                                    'صور وأفراح',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            child: Padding(
                              padding:
                              EdgeInsets.fromLTRB(10, 10, 20, 5),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            10, 10, 10, 10),
                                        child: Text(
                                          ' إضافة صورة',
                                          style: TextStyle(
                                              fontWeight:
                                              FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                      // width: MediaQuery.of(context).size.width,
                                      //  height: MediaQuery.of(context).size.height,
                                      decoration: BoxDecoration(
                                          color: HexColor.fromHex(
                                              "#342109"),
                                          borderRadius:
                                          BorderRadius.circular(
                                              15),
                                          border: Border.all(
                                              color: HexColor.fromHex(
                                                  "#C2B19D"))))
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(
                                PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      addImage(),
                                ),
                              );
                            },
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding:
                              EdgeInsets.fromLTRB(15, 15, 15, 10),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color:
                                                HexColor.fromHex(
                                                    "#C2B19D"))),
                                        height: 120,
                                        width: 140,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            5, 0, 0, 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: HexColor
                                                      .fromHex(
                                                      "#C2B19D"))),
                                          height: 120,
                                          width: 140,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding:
                              EdgeInsets.fromLTRB(15, 15, 15, 10),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color:
                                                HexColor.fromHex(
                                                    "#C2B19D"))),
                                        height: 120,
                                        width: 140,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            5, 0, 0, 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: HexColor
                                                      .fromHex(
                                                      "#C2B19D"))),
                                          height: 120,
                                          width: 140,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ) )],);
  }
}
