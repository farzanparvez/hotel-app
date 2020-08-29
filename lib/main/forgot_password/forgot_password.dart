import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './forgot_enter_email.dart';
import '../register_and_login/verificaton1.dart';
import '../register_and_login/login.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    // myFocusNode.dispose();
    super.dispose();
  }

  // void _requestFocus() {
  //   setState(() {
  //     // FocusScope.of(context).requestFocus(myFocusNode);
  //   });
  // }

Country _selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          '',
        ),
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: new SingleChildScrollView(
        child: Container(
            //height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Center(
              child: Container(
                //height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Forgot My Password",
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
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Enter your mobile number to get reset pin',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Row(children: <Widget>[
                      Stack(children: <Widget>[
                        Container(
                          //color: Colors.red,
                          width: MediaQuery.of(context).size.width * 0.275,

                          child: TextFormField(
                            enabled: true,
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(labelText: ''),
                          ),
                        ),
                        Container(
                          // color: Colors.red,
                          width: MediaQuery.of(context).size.width * 0.31,
                          height: MediaQuery.of(context).size.height * 0.09,
                          child: CountryPicker(
                            dense: false,
                            showFlag: true, //displays flag, true by default
                            showDialingCode:
                                true, //displays dialing code, false by default
                            showName:
                                false, //displays country name, true by default
                            showCurrency: false, //eg. 'British pound'
                            showCurrencyISO: false, //eg. 'GBP'
                            onChanged: (Country country) {
                              setState(() {
                                _selected = country;
                              });
                            },
                            selectedCountry: _selected,
                          ),
                        ),
                      ]),
                      Expanded(
                        child: Container(
                          //width: MediaQuery.of(context).size.width*0.6,
                          child: TextFormField(
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            decoration:
                                InputDecoration(labelText: 'Mobile Number'),
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.07,
                      margin: EdgeInsets.only(bottom: 20.0),
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
                              print("Next");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Verification()),
                            );
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
                    FlatButton(
                        onPressed: () {
                           Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ForgotEnterEmail()));
                        },
                        child: Text(
                          "Send an email",
                          style: TextStyle(
                            color: Color(0xFF61498C),
                            fontSize: 16.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            // color: Color(0xFF61498C),
                            fontSize: 17.0,
                            fontFamily: 'SFCompactDisplay',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                         // width: 80,
                          child: FlatButton(
                              onPressed: () {
                                 Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => Login()));
                              },
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                  color: Color(0xFF61498C),
                                  fontSize: 17.0,
                                  fontFamily: 'SFCompactText',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
