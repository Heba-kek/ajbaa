import 'package:app/Extension/ColorExtension.dart';
import 'package:app/pages/addImage.dart';
import 'package:app/pages/addNew.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class boxActivity extends StatefulWidget {
  @override
  _boxActivity createState() => _boxActivity();
}

class _boxActivity extends State<boxActivity> {
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
              child: SingleChildScrollView(
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            color: HexColor.fromHex("#C2B19D"),
                            borderRadius: BorderRadius.circular(25),
                            border:
                                Border.all(color: HexColor.fromHex("#707070"))),
                        child: Column(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Stack(children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                45, 10, 10, 0),
                                            child: Text(
                                              'صندوق التضامن',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 22),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 5, 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: <Widget>[
                                                Text(
                                                  ' محمود بن محمد ماكن العوفي',
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                20, 0, 20, 0),
                                            child: Divider(
                                              height: 2,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 20, 10, 10),
                                        child: Container(
                                            width: 80.0,
                                            height: 80.0,
                                            decoration: new BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: new DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: new AssetImage(
                                                        'assets/images/profile.png')))),
                                      ),
                                    ])
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(3, 0, 3, 5),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                            width: 90,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 10, 0, 10),
                                              child: Text('المتأخرات',
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 11)),
                                            ),
                                            // width: MediaQuery.of(context).size.width,
                                            //  height: MediaQuery.of(context).size.height,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                    color: HexColor.fromHex(
                                                        "#342109")))),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 0, 0),
                                          child: Container(
                                              width: 90,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 10, 0, 10),
                                                child: Text('الرصيد',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 11)),
                                              ),
                                              // width: MediaQuery.of(context).size.width,
                                              //  height: MediaQuery.of(context).size.height,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                      color: HexColor.fromHex(
                                                          "#342109")))),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 0, 0),
                                          child: Container(
                                              width: 90,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 10, 0, 10),
                                                child: Text('عدد الأسهم',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 11)),
                                              ),
                                              // width: MediaQuery.of(context).size.width,
                                              //  height: MediaQuery.of(context).size.height,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                      color: HexColor.fromHex(
                                                          "#342109")))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Container(
                                              width: 90,
                                              child: Text(
                                                '3',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
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
                                                  color: Colors.white))),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 0, 5, 0),
                                        child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 10, 0, 10),
                                              child: Container(
                                                width: 90,
                                                child: Text(
                                                  '20500',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                      fontSize: 16),
                                                  textAlign: TextAlign.center,
                                                ),
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
                                                    color: Colors.white))),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Container(
                                              width: 90,
                                              child: Text(
                                                '5',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 16),
                                                textAlign: TextAlign.center,
                                              ),
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
                                                  color: Colors.white))),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                                  child: Text(
                                    'كل تأخير في السداد يؤخر طلب القرض',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: HexColor.fromHex("#D20000"),
                                      fontSize: 12,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                                  child: Divider(
                                    height: 4,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(3, 0, 3, 5),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                            width: 90,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 10, 0, 10),
                                              child: Text('المتأخرات',
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 11)),
                                            ),
                                            // width: MediaQuery.of(context).size.width,
                                            //  height: MediaQuery.of(context).size.height,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                    color: HexColor.fromHex(
                                                        "#342109")))),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 0, 0),
                                          child: Container(
                                              width: 100,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 10, 0, 10),
                                                child: Text('متبقي القرض',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 11)),
                                              ),
                                              // width: MediaQuery.of(context).size.width,
                                              //  height: MediaQuery.of(context).size.height,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                      color: HexColor.fromHex(
                                                          "#342109")))),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 0, 0),
                                          child: Container(
                                              width: 90,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 10, 0, 10),
                                                child: Text(' القرض',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 11)),
                                              ),
                                              // width: MediaQuery.of(context).size.width,
                                              //  height: MediaQuery.of(context).size.height,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                      color: HexColor.fromHex(
                                                          "#342109")))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(3, 5, 3, 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Container(
                                              width: 90,
                                              child: Text(''),
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
                                                  color: Colors.white))),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 0, 5, 0),
                                        child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 10, 0, 10),
                                              child: Container(
                                                width: 100,
                                                child: Text(''),
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
                                                    color: Colors.white))),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Container(
                                              width: 90,
                                              child: Text(''),
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
                                                  color: Colors.white))),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                                  child: Divider(
                                    height: 4,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(3, 0, 3, 5),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                            width: 100,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 10, 0, 10),
                                              child: Text('انتظار القرض',
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 11)),
                                            ),
                                            // width: MediaQuery.of(context).size.width,
                                            //  height: MediaQuery.of(context).size.height,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                    color: HexColor.fromHex(
                                                        "#342109")))),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 0, 0),
                                          child: Container(
                                              width: 90,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 10, 0, 10),
                                                child: Text('التصفية',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 11)),
                                              ),
                                              // width: MediaQuery.of(context).size.width,
                                              //  height: MediaQuery.of(context).size.height,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                      color: HexColor.fromHex(
                                                          "#342109")))),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 0, 0),
                                          child: Container(
                                              width: 100,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    5, 10, 5, 10),
                                                child: Text(' رسوم التأسيس',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 11)),
                                              ),
                                              // width: MediaQuery.of(context).size.width,
                                              //  height: MediaQuery.of(context).size.height,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                      color: HexColor.fromHex(
                                                          "#342109")))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(3, 5, 3, 5),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Container(
                                              width: 100,
                                              child: Text(''),
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
                                                  color: Colors.white))),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 0, 5, 0),
                                        child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 10, 0, 10),
                                              child: Container(
                                                width: 90,
                                                child: Text(''),
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
                                                    color: Colors.white))),
                                      ),
                                      Container(
                                          child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Container(
                                              width: 100,
                                              child: Text(''),
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
                                                  color: Colors.white))),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                                  child: Divider(
                                    height: 4,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: Text(
                                    'الاستثمار',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: HexColor.fromHex("#1453E8"),
                                        fontSize: 18),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              child: Text(
                                                'العضو غير مستثمر',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: HexColor.fromHex(
                                                        "#1453E8"),
                                                    fontSize: 14),
                                              )),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 10, 0),
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  _value = !_value;
                                                  // _valuet = !_valuet;
                                                  if (_valuet == true) {
                                                    _valuet = !_valuet;
                                                  }
                                                });
                                              },
                                              child: _value
                                                  ? Container(
                                                      width: 20,
                                                      height: 80,
                                                      decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.black,
                                                          border: Border.all(
                                                              color:
                                                                  Colors.white,
                                                              width: 1)),
                                                    )
                                                  : Container(
                                                      width: 20,
                                                      height: 80,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          shape:
                                                              BoxShape.circle,
                                                          border: Border.all(
                                                              color:
                                                                  Colors.black,
                                                              width: 1)),
                                                    ),
                                            ),
                                          ),
                                          new Spacer(),
                                          Text(
                                            'العضو مستثمر',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    HexColor.fromHex("#1453E8"),
                                                fontSize: 14),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  _valuet = !_valuet;
                                                  // _valuet = !_valuet;
                                                  if (_value == true) {
                                                    _value = !_value;
                                                  }
                                                });
                                              },
                                              child: _valuet
                                                  ? Container(
                                                      width: 20,
                                                      height: 80,
                                                      decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Colors.black,
                                                          border: Border.all(
                                                              color:
                                                                  Colors.white,
                                                              width: 1)),
                                                    )
                                                  : Container(
                                                      width: 20,
                                                      height: 80,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          shape:
                                                              BoxShape.circle,
                                                          border: Border.all(
                                                              color:
                                                                  Colors.black,
                                                              width: 1)),
                                                    ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: Center(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            child: Container(
                                                width: 90,
                                                child: Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 13, 0, 13),
                                                  child: Text(
                                                    ' 25000',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: HexColor.fromHex(
                                                            "#FFEE00")),
                                                  ),
                                                ),
                                                // width: MediaQuery.of(context).size.width,
                                                //  height: MediaQuery.of(context).size.height,
                                                decoration: BoxDecoration(
                                                    color: HexColor.fromHex(
                                                        "#1453E8"),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    border: Border.all(
                                                        color: HexColor.fromHex(
                                                            "#FFEE00")))),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            child: Container(
                                                width: 90,
                                                child: Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 10, 0, 10),
                                                  child: Text(
                                                    'مبلغ الاستثمار',
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                // width: MediaQuery.of(context).size.width,
                                                //  height: MediaQuery.of(context).size.height,
                                                decoration: BoxDecoration(
                                                    color: HexColor.fromHex(
                                                        "#FFEE00"),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    border: Border.all(
                                                        color: HexColor.fromHex(
                                                            "#1453E8")))),
                                          ),
                                        ],
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 25, 20, 5),
                                  child: Container(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(25, 10, 25, 10),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Theme(
                                              data: new ThemeData(
                                                  primaryColor:
                                                      Colors.transparent,
                                                  //   accentColor: Colors.orange,
                                                  hintColor:
                                                      Colors.transparent),
                                              child: TextField(
                                                textAlign: TextAlign.center,
                                                controller: _textn,
                                                cursorColor: Colors.transparent,
                                                style: TextStyle(
                                                    color: Colors.black),
                                                decoration: InputDecoration(
                                                    filled: true,
                                                    labelStyle: Theme.of(
                                                            context)
                                                        .textTheme
                                                        .caption
                                                        .copyWith(
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor),
                                                    hintText:
                                                        'هنا تكتب الملاحظة',
                                                    hintStyle:
                                                        TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                            fontSize: 12),
                                                    fillColor:
                                                        Colors.transparent,
                                                    alignLabelWithHint: true

                                                    //can also add icon to the end of the textfiled
                                                    //  suffixIcon: Icon(Icons.remove_red_eye),
                                                    ),
                                              )),
                                        ),
                                      ),
                                      // width: MediaQuery.of(context).size.width,
                                      //  height: MediaQuery.of(context).size.height,
                                      decoration: BoxDecoration(
                                          color: HexColor.fromHex("#E97F7F"),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color: HexColor.fromHex(
                                                  "#342109")))),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    ' لتفاصيل أكثر يرجى التواصل مع أمين الصندوق',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
