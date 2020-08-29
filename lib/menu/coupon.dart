import 'package:flutter/material.dart';

class Coupon extends StatefulWidget {
  @override
  _CouponState createState() => _CouponState();
}

class _CouponState extends State<Coupon> {
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
      ),
      body: Align(
        child: Container(
          alignment: Alignment.center,
         // margin: EdgeInsets.only(top: 10.0),
          child: Column(children: <Widget>[
            SizedBox(height: 20),
            Column(children: <Widget>[
              Container(
                width: mediaQuery.width * 0.9,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Do you have a coupon code?",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 17.0,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(
                // width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.07,
                margin: EdgeInsets.only(top: 6),
               // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                color: Colors.white,
                child: ListTile(
                  trailing: FlatButton(
                    textColor: Color(0xFF61498C),
                    onPressed: () {
                      print("object");
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(
                        color: Color(0xFF61498C),
                        fontSize: 14.0,
                        fontFamily: 'SF Pro Text',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    shape: CircleBorder(
                        side: BorderSide(color: Colors.transparent)),
                  ),
                  title: Row(children: <Widget>[
                    Container(
                      ////padding: EdgeInsets.only(left: 8.0),
                      child: Image(
                        image: AssetImage("assets/menu/coupon.png"),
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                        width: mediaQuery.width * 0.45,
                        height: mediaQuery.height * 0.07,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Enter code here",
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none),
                           keyboardType: TextInputType.number,
                        )),
                  ]),
                ),
              )
            ]),
          ]),
        ),
      ),
    ));
  }
}
