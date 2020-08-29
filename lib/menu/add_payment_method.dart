import 'package:flutter/material.dart';
import 'package:masked_text_input_formatter/masked_text_input_formatter.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';

class AddPaymentMethod extends StatefulWidget {
  @override
  _AddPaymentMethodState createState() => _AddPaymentMethodState();
}

class _AddPaymentMethodState extends State<AddPaymentMethod> {
  Country _selected;

  @override
  Widget build(BuildContext context) {
    //dynamic Layout
    var mediaQuery = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              brightness: Brightness.light,
              iconTheme: IconThemeData(color: Colors.black),
              title: Text(
                "Payment Methods",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontFamily: 'SF Pro Display',
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
                    "Done",
                    style: TextStyle(
                      color: Color(0xFF61498C),
                      fontSize: 14.0,
                      fontFamily: 'SF Pro Text',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  shape:
                      CircleBorder(side: BorderSide(color: Colors.transparent)),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Align(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  width: mediaQuery.width * 0.9,
                  child: Column(children: <Widget>[
                    Container(
                      child: Column(children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Card Number",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 13.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          margin: EdgeInsets.only(top: 6),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          color: Colors.white,
                          child: Row(children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Image(
                                  image:
                                      AssetImage("assets/menu/master-card.png"),
                                  fit: BoxFit.fill,
                                  height: MediaQuery.of(context).size.height *
                                      0.035,
                                )),
                            SizedBox(width: 15),
                            Container(
                                width: mediaQuery.width * 0.6,
                                height: mediaQuery.height * 0.07,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "xxxx-xxxx-xxxx-xxxx",
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    MaskedTextInputFormatter(
                                      mask: 'xxxx-xxxx-xxxx-xxxx',
                                      separator: '-',
                                    ),
                                  ],
                                )),
                          ]),
                        )
                      ]),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // color: Color(0xFF707070),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(children: <Widget>[
                              Container(
                                alignment: Alignment.centerLeft,
                                width: mediaQuery.width * 0.4,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Exp Date",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.6),
                                      fontSize: 13.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                margin: EdgeInsets.only(top: 6),
                                color: Colors.white,
                                child: Row(children: <Widget>[
                                  Container(
                                      width: mediaQuery.width * 0.4,
                                      height: mediaQuery.height * 0.07,
                                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "MM/YY",
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none),
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [
                                          MaskedTextInputFormatter(
                                            mask: 'MM/YY',
                                            separator: '/',
                                          ),
                                        ],
                                      )),
                                ]),
                              )
                            ]),
                            Column(children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: mediaQuery.width * 0.4,
                                  child: Text(
                                    "CVV",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.6),
                                      fontSize: 13.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                margin: EdgeInsets.only(top: 6),
                                // padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                                color: Colors.white,
                                child: Row(children: <Widget>[
                                  Container(
                                      width: mediaQuery.width * 0.4,
                                      height: mediaQuery.height * 0.07,
                                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "CVV",
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none),
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [
                                          MaskedTextInputFormatter(
                                            mask: 'CVV',
                                            separator: '',
                                          ),
                                        ],
                                      )),
                                ]),
                              )
                            ]),
                          ]),
                    ),
                    SizedBox(height: 10),
                    Column(children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Country",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 13.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        width: mediaQuery.width,
                        height:MediaQuery.of(context).size.height * 0.07,
                        padding: EdgeInsets.all(6.0),
                        color: Colors.white,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          
                          child: CountryPicker(
                            dense: false,
                            showFlag: true, //displays flag, true by default
                            showDialingCode:
                                true, //displays dialing code, false by default
                            showName:
                                true, //displays country name, true by default
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
                      ),
                    ]),
                  ]),
                ),
              ),
            )));
  }
}
