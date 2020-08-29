import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelshippo/find_a_stay/find_stay/step4of4.dart';

class Step3Of4 extends StatefulWidget {
  @override
  _Step3Of4State createState() => _Step3Of4State();
}

class _Step3Of4State extends State<Step3Of4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Stap 3 of 4",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
              fontFamily: 'SF Pro Text',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            FlatButton(
              textColor: Color(0xFF61498C),
              onPressed: () {
                print("object");
                Navigator.pop(context);
              },
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Color(0xFF61498C),
                  fontSize: 14.0,
                  fontFamily: 'SF Pro Text',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
          ],
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
                          "Who\'s comming?",
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
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04),
                      SizedBox(height: 10),
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Kate Simmon",
                            style: TextStyle(
                              // color: Color(0xFF61498C),
                              fontSize: 17.0,
                              fontFamily: 'SFCompactDisplay',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
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
                            "Room One",
                            style: TextStyle(
                              // color: Color(0xFF61498C),
                              fontSize: 17.0,
                              fontFamily: 'SFCompactDisplay',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 0.0),
                              height: MediaQuery.of(context).size.height * 0.03,
                              child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Image(
                                  image: AssetImage("assets/findStay/add.png"),
                                  fit: BoxFit.fill,
                                ),
                              )),
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
                            "Room One",
                            style: TextStyle(
                              // color: Color(0xFF61498C),
                              fontSize: 17.0,
                              fontFamily: 'SFCompactDisplay',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 0.0),
                              height: MediaQuery.of(context).size.height * 0.03,
                              child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Image(
                                  image: AssetImage("assets/findStay/add.png"),
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.33),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.07,
                        //margin: EdgeInsets.only(bottom: 20.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/btnBack.png'),
                              fit: BoxFit.fill),
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
                                      builder: (context) => Step4Of4()));
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
