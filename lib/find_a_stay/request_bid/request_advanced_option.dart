import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RequestAdvancedOption extends StatefulWidget {
  @override
  _RequestAdvancedOptionState createState() => _RequestAdvancedOptionState();
}

class _RequestAdvancedOptionState extends State<RequestAdvancedOption> {
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
          body: Stack(
            children: <Widget>[
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.07,
                  //margin: EdgeInsets.only(bottom: 20.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/btnBack.png'),
                        fit: BoxFit.cover),
                    // borderRadius: BorderRadius.all(r),
                  ),
                  child: RaisedButton(
                      color: Colors.transparent,
                      onPressed: () {
                        print("Next");
                        // Navigator.push(
                        //     context,
                        //      CupertinoPageRoute(
                        //         fullscreenDialog: false,
                        //         builder: (context) => Step2Of4()));
                      },
                      child: Text(
                        'Request Bid',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0))),
                ),
              ),
              Container(
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
                      "Kandy, Central Province" + "(+37Km)",
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
                                          color:
                                              Colors.black.withOpacity(0.8),
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
                  //
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Divider(height: 3, color: Colors.grey),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Align(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.88,
                      child: Column(
                        children: <Widget>[
                          Align(
                            child: Container(
                              // margin: EdgeInsets.only(left: 20.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Guests",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 12.0,
                                  fontFamily: 'SF Pro Text',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Align(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "2 Adults",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "0 Children",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "1 Room",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Divider(height: 3, color: Colors.grey),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Align(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.88,
                      child: Column(
                        children: <Widget>[
                          Align(
                            child: Container(
                              // margin: EdgeInsets.only(left: 20.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Basis",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 12.0,
                                  fontFamily: 'SF Pro Text',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Align(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Bed and Breakfast",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Divider(height: 3, color: Colors.grey),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.16),
                  Container(
                    // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.07,
                    //margin: EdgeInsets.only(bottom: 20.0),
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //       image: AssetImage('assets/btnBack.png'),
                    //       fit: BoxFit.cover),
                    //   // borderRadius: BorderRadius.all(r),
                    // ),
                    child: RaisedButton(
                        //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        color: Color(0xFF5D4788),
                        onPressed: () {
                          print("Request Bid");
                          // Navigator.push(
                          //     context,
                          //      CupertinoPageRoute(
                          //         fullscreenDialog: false,
                          //         builder: (context) => Step2Of4()));
                        },
                        child: Text(
                          'Advanced Options',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.0))),
                  ),
                ]),
              ),
            ],
          )),
    );
  }
}
