import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelshippo/find_a_stay/find_stay/step2of4.dart';

class Step1Of4 extends StatefulWidget {
  @override
  _Step1Of4State createState() => _Step1Of4State();
}

class _Step1Of4State extends State<Step1Of4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Stap 1 of 4",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
              fontFamily: 'SF Pro Text',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.88,
            child: Container(
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Review your \ndetails",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 13),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Orchid Villa, Kandy",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      SizedBox(height: 10),
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Dates",
                            style: TextStyle(
                              // color: Color(0xFF61498C),
                              fontSize: 17.0,
                              fontFamily: 'SFCompactDisplay',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "01 Oct - Oct 03",
                            style: TextStyle(
                              color: Color(0xFF61498C),
                              fontSize: 17.0,
                              fontFamily: 'SFCompactText',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(),
                      SizedBox(height: 5),
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "2 Guests",
                            style: TextStyle(
                              // color: Color(0xFF61498C),
                              fontSize: 17.0,
                              fontFamily: 'SFCompactDisplay',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "Guests",
                            style: TextStyle(
                              color: Color(0xFF61498C),
                              fontSize: 17.0,
                              fontFamily: 'SFCompactText',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(),
                      SizedBox(height: 5),
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Basis",
                            style: TextStyle(
                              // color: Color(0xFF61498C),
                              fontSize: 17.0,
                              fontFamily: 'SFCompactDisplay',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "Bed and Breakfast",
                            style: TextStyle(
                              color: Color(0xFF61498C),
                              fontSize: 17.0,
                              fontFamily: 'SFCompactText',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.27),
                      Container(
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
                              Navigator.push(
                                  context,
                                   CupertinoPageRoute(
                                      fullscreenDialog: false,
                                      builder: (context) => Step2Of4()));
                            },
                            child: Text(
                              'NEXT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
