import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelshippo/find_a_stay/request_bid/request_advanced_option.dart';

class RequestBidBedBreakFast extends StatefulWidget {
  @override
  _RequestBidBedBreakFastState createState() => _RequestBidBedBreakFastState();
}

class _RequestBidBedBreakFastState extends State<RequestBidBedBreakFast> {
 

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
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.03),
                    child: Text(
                      "Basis",
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
                //jh
                Container(
                  height:  MediaQuery.of(context).size.height * 0.28,
                  child: CupertinoPicker(
                    useMagnifier: true,
                    backgroundColor: Colors.white10,
                    itemExtent: 30.00,
                    children: <Widget>[
                      Text(
                      "Bed and Breakfast",
                     
                    ),
                    Text(
                      "Half Board",
                      
                    ),
                    Text(
                      "Full Board",
                     
                    ),
                    ],
//            scrollController: FixedExtentScrollController(initialItem: 6),
                    onSelectedItemChanged: (newIndex) {
                      print("index selected");
                    },
                  ),
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
                          builder: (context) => RequestAdvancedOption()),
                    );
                  },
                  child: Text(
                    "CONTINUE",
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
