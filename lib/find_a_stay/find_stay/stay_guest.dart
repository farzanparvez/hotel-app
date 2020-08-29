import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './guest_filter.dart';

class StayGuest extends StatefulWidget {
  @override
  _StayGuestState createState() => _StayGuestState();
}

class _StayGuestState extends State<StayGuest> {
  int _n = 1;
  int _n2 = 0;
  int _n3 = 1;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  void add2() {
    setState(() {
      _n2++;
    });
  }

  void minus2() {
    setState(() {
      if (_n2 != 0) _n2--;
    });
  }

  void add3() {
    setState(() {
      _n3++;
    });
  }

  void minus3() {
    setState(() {
      if (_n3 != 0) _n3--;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              brightness: Brightness.light,
              iconTheme: IconThemeData(color: Colors.black),
              title: Text("")),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              child: Column(children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.03),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "location",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontFamily: 'SF Pro Text',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.03),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Kandy, Central Province",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Divider(height: 3, color: Colors.grey),

                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.88,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Check In",
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: 12.0,
                                        fontFamily: 'SF Pro Text',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Container(
                                  //  // margin: EdgeInsets.only(
                                  //       left: MediaQuery.of(context).size.height * 0.03),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Wednesday, Oct 01",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Column(
                            children: <Widget>[
                              Align(
                                child: Container(
                                  // margin: EdgeInsets.only(left: 20.0),
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Check Out",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: 12.0,
                                      fontFamily: 'SF Pro Text',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Align(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Friday, Oct 03",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.03),
                    child: Text(
                      "Guests",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 24.0,
                        fontFamily: 'SF Pro Text',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Divider(height: 3, color: Colors.grey),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03),
                  height: MediaQuery.of(context).size.height * 0.36,
                  width: MediaQuery.of(context).size.width * 0.88,
                  child: Column(children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Adults",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontFamily: 'SF Pro Text',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    add();
                                  },
                                  child: Container(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/findStay/plusBtn.png"),
                                      fit: BoxFit.fill,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.035,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  alignment: Alignment.center,
                                  child: new Text(
                                    '$_n',
                                    style: TextStyle(
                                      color: Color(0xFF3B3B3B),
                                      fontSize: 18.0,
                                      fontFamily: 'SF Pro Text',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                InkWell(
                                  onTap: () {
                                    minus();
                                  },
                                  child: Container(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/findStay/minusBtn.png"),
                                      fit: BoxFit.fill,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.035,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Childrens(<12)",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontFamily: 'SF Pro Text',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    add2();
                                  },
                                  child: Container(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/findStay/plusBtn.png"),
                                      fit: BoxFit.fill,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.035,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  alignment: Alignment.center,
                                  child: new Text(
                                    '$_n2',
                                    style: TextStyle(
                                      color: Color(0xFF3B3B3B),
                                      fontSize: 18.0,
                                      fontFamily: 'SF Pro Text',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                InkWell(
                                  onTap: () {
                                    minus2();
                                  },
                                  child: Container(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/findStay/minusBtn.png"),
                                      fit: BoxFit.fill,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.035,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Room(s)",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontFamily: 'SF Pro Text',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    add3();
                                  },
                                  child: Container(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/findStay/plusBtn.png"),
                                      fit: BoxFit.fill,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.035,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  alignment: Alignment.center,
                                  child: new Text(
                                    '$_n3',
                                    style: TextStyle(
                                      color: Color(0xFF3B3B3B),
                                      fontSize: 18.0,
                                      fontFamily: 'SF Pro Text',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                InkWell(
                                  onTap: () {
                                    minus3();
                                  },
                                  child: Container(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/findStay/minusBtn.png"),
                                      fit: BoxFit.fill,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.035,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                //SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Divider(height: 3, color: Colors.grey),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          fullscreenDialog: false,
                          builder: (context) => StayFilter()),
                    );
                  },
                  child: Text(
                    "Show Results",
                    style: TextStyle(
                      color: Color(0xFF5C4586),
                      fontSize: 16.0,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              ]),
            ),
          )),
    );
  }
}
