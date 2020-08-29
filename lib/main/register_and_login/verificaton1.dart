import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import '../forgot_password/enter_new_password.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
                        "Verify your number",
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
                          'You will receive a pin number shortly',
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                    VerificationCode(
                      keyboardType: TextInputType.number,
                      length: 4,
                      autofocus: true,
                      itemSize:  MediaQuery.of(context).size.width * 0.20,
                      onCompleted: (String value) {
                        //...
                        print(value);
                      },
                      onEditing: (bool value) {},
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EnterNewPassword()),
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
                        onPressed: () {},
                        child: Text(
                          "Resend code",
                          style: TextStyle(
                            color: Color(0xFF61498C),
                            fontSize: 14.5,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
