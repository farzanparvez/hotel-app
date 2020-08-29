import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelshippo/find_a_stay/find_stay/step30f4.dart';

class Step2Of4 extends StatefulWidget {
  @override
  _Step2Of4State createState() => _Step2Of4State();
}

class _Step2Of4State extends State<Step2Of4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Stap 2 of 4",
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
        body: SingleChildScrollView(
          child: Center(
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
                            "Add your details",
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
                            height: MediaQuery.of(context).size.height * 0.03),
                        TextFormField(
                          obscureText: false,
                          decoration: InputDecoration(labelText: 'Fist Name'),
                        ),
                        SizedBox(height:10.0),
                        TextFormField(
                          obscureText: false,
                          decoration: InputDecoration(labelText: 'Last Name'),
                        ),
                        SizedBox(height:10.0),
                        TextFormField(
                          obscureText: false,
                          decoration:
                              InputDecoration(labelText: 'Email Address'),
                        ),
                        SizedBox(height:10.0),
                        TextFormField(
                          obscureText: false,
                          keyboardType: TextInputType.number,
                          decoration:
                              InputDecoration(labelText: 'Mobile Number'),
                        ),
                        SizedBox(height:10.0),
                        TextFormField(
                          obscureText: false,
                          decoration:
                              InputDecoration(labelText: 'Country/Region'),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.07,
                          margin: EdgeInsets.only(bottom: 4.0),
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
                                        builder: (context) => Step3Of4()));
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
                                  borderRadius:
                                      new BorderRadius.circular(5.0))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
