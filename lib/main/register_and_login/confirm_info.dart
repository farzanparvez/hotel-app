import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../find_a_stay/find_a_stay.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';

class ConfirmYourInfo extends StatefulWidget {
  @override
  _ConfirmYourInfoState createState() => _ConfirmYourInfoState();
}

class _ConfirmYourInfoState extends State<ConfirmYourInfo> {
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
                        "Confirm your information",
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
                          'Double check your details',
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
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: TextFormField(
                              decoration: InputDecoration(labelText: 'First'),
                            ),
                          ),
                          // SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: TextFormField(
                                decoration: InputDecoration(labelText: 'Last'),
                              ))
                        ]),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(labelText: 'Email'),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Row(children: <Widget>[
                      Stack(children: <Widget>[
                        Container(
                          //color: Colors.red,
                           width: MediaQuery.of(context).size.width * 0.275,
                          
                          child: TextFormField(
                            enabled: true,
                              obscureText: false,
                              keyboardType: TextInputType.number,
                              decoration:
                                  InputDecoration(labelText: ''),
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.09),
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
                                  builder: (context) => FindAStay()),
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
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
