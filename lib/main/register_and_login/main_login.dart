import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './enter_email.dart';
import './login.dart';

class MainLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        // statusBarColor is used to set Status bar color in Android devices.
        statusBarColor: Color(0xFF61498C),

        // To make Status bar icons color white in Android devices.
        statusBarIconBrightness: Brightness.light,

        // statusBarBrightness is used to set Status bar icon color in iOS.
        statusBarBrightness: Brightness.light
        // Here light means dark color Status bar icons.
      ),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF61498C),
        body: new SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: new Stack(children: <Widget>[
            //color: Colors.white,
            new Container(
              height: MediaQuery.of(context).size.height,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image(
                  image: AssetImage('assets/gradientV.png'),
                  fit: BoxFit.fill, // use this
                ),
              ),
            ),
            new Container(
              height: MediaQuery.of(context).size.height,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image(
                  image: AssetImage('assets/blueFlower.png'),
                  fit: BoxFit.fill, // use this
                ),
              ),
            ),
            new Align(
              child: new Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.88,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.075,
                    ),
                    new Container(
                      padding: EdgeInsets.all(0),
                      height: MediaQuery.of(context).size.height * 0.22,
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: FittedBox(
                          alignment: Alignment.centerLeft,
                          child: Image(
                            image: AssetImage('assets/hippoWithText.png'),
                            fit: BoxFit.fill, // use this
                            //height: MediaQuery.of(context).size.height * 0.18,
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(left: 10.0),
                      //height: MediaQuery.of(context).size.height * 0.22,
                      child: Text(
                        "Sign in to see deals upto 50%,\nyour current booking, and more...",
                        style: TextStyle(
                            fontFamily: "SFCompactText",
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    new Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.9,
                      margin: EdgeInsets.only(top: 0.0, left: 10, right: 10),
                      child: RaisedButton.icon(
                        onPressed: () {
                          print('Button Clicked.');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        label: Text(
                          'Sign In with Facebook',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SF Pro Text",
                            fontSize: 18.0,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        icon: Image(
                          image: AssetImage("assets/facebook.png"),
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        textColor: Colors.white,
                        // splashColor: Colors.red,
                        color: Color(0xFF1976D2),
                      ),
                    ),
                    new Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.9,
                      margin: EdgeInsets.only(top: 15, left: 10, right: 10),
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        child: Text(
                          'Sign In with Gmail',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SF Pro Text",
                            fontSize: 18.0,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        textColor: Colors.white,
                        color: Color(0xFFEC6357),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: Image(
                        image: AssetImage("assets/orLine.png"),
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height * 0.035,
                      ),
                    ),
                    new Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.9,
                      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => Login()));
                          print('Button Clicked.');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        child: Text(
                          'Sign In with your email',
                          style: TextStyle(
                            color: Color(0xFF61498C),
                            fontFamily: "SF Pro Text",
                            fontSize: 18.0,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.12,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Center(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => EnterEmail()));
                            },
                            child: Text(
                              "Create an Account",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "SF Pro Text",
                                fontSize: 16.0,
                                fontWeight: FontWeight.w100,
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
