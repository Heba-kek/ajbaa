import 'package:app/Extension/ColorExtension.dart';
import 'package:app/pages/addImage.dart';
import 'package:app/pages/addNew.dart';
import 'package:app/pages/newDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewActivity extends StatefulWidget {
  @override
  _NewActivity createState() => _NewActivity();
}

class _NewActivity extends State<NewActivity> {
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
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                            child: Text(
                              'أخبارنا',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                          GestureDetector(
                            child: Padding(
                              padding:
                              EdgeInsets.fromLTRB(30, 10, 20, 10),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            30, 10, 30, 10),
                                        child: Text(
                                          'كتابة خبر',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                      // width: MediaQuery.of(context).size.width,
                                      //  height: MediaQuery.of(context).size.height,
                                      decoration: BoxDecoration(
                                          color:
                                          HexColor.fromHex("#342109"),
                                          borderRadius:
                                          BorderRadius.circular(15),
                                          border: Border.all(
                                              color: HexColor.fromHex(
                                                  "#C2B19D"))))
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(
                                PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => addNew(),
                                ),
                              );
                            },
                          ),
                          GestureDetector(child: Padding(
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
                                  padding:
                                  EdgeInsets.fromLTRB(0, 5, 15, 5),
                                  child: Row(
                                    children: <Widget>[
                                      new Spacer(),
                                      Text(
                                        'الكاتب ممدوح العوفي',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 5, 0, 5),
                                  child: Divider(
                                    color: Colors.black,
                                    height: 1,
                                  ),
                                )
                              ],
                            ),
                          ),onTap: (){
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => newDetails(),
                              ),
                            );
                          },),
                          GestureDetector(child: Padding(
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
                                  padding:
                                  EdgeInsets.fromLTRB(0, 5, 15, 5),
                                  child: Row(
                                    children: <Widget>[
                                      new Spacer(),
                                      Text(
                                        'الكاتب ممدوح العوفي',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 5, 0, 5),
                                  child: Divider(
                                    color: Colors.black,
                                    height: 1,
                                  ),
                                )
                              ],
                            ),
                          ),onTap: (){
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => newDetails(),
                              ),
                            );
                          },),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ) )],);
  }
}
