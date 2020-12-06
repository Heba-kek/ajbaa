import 'package:app/Extension/ColorExtension.dart';
import 'package:app/pages/addImage.dart';
import 'package:app/pages/addNew.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class contactActivity extends StatefulWidget {
  @override
  _contactActivity createState() => _contactActivity();
}

class _contactActivity extends State<contactActivity> {
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
                              'تواصلنا',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child:   Container(

                              // width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding:
                                EdgeInsets.fromLTRB(5, 15, 5, 10),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                20, 0, 0, 0),
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.transparent,borderRadius: BorderRadius.circular(20),
                                                    border: Border.all(
                                                        color:
                                                        HexColor.fromHex(
                                                            "#342109"))),
                                                height: 89,
                                                width: 89,
                                                child:Image.asset('assets/images/pro.png',) ) ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              0, 0, 0, 0),
                                          child:   Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.transparent,borderRadius: BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color:
                                                      HexColor.fromHex(
                                                          "#342109"))),
                                              height: 89,
                                              width: 89,
                                              child:Image.asset('assets/images/prot.png',)  ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              0, 0, 20, 0),
                                          child:  Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.transparent,borderRadius: BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color:
                                                      HexColor.fromHex(
                                                          "#342109"))),
                                              height: 89,
                                              width: 89,
                                              child:Image.asset('assets/images/proth.png',)  ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),),
                          Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child:   Container(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding:
                                EdgeInsets.fromLTRB(5, 15, 5, 10),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                20, 0, 0, 0),
                                            child:     Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.transparent,borderRadius: BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color:
                                                      HexColor.fromHex(
                                                          "#342109"))),
                                              height: 89,
                                              width: 89,
                                            ) ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              0, 0, 0, 0),
                                          child:   Container(
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,borderRadius: BorderRadius.circular(20),
                                                border: Border.all(
                                                    color:
                                                    HexColor.fromHex(
                                                        "#342109"))),
                                            height: 89,
                                            width: 89,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              0, 0, 20, 0),
                                          child:  Container(
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,borderRadius: BorderRadius.circular(20),
                                                border: Border.all(
                                                    color:
                                                    HexColor.fromHex(
                                                        "#342109"))),
                                            height: 89,
                                            width: 89,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),)

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ) )],);
  }
}
