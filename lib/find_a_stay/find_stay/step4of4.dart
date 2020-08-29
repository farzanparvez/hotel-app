import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelshippo/find_a_stay/find_stay/filters.dart';

class Step4Of4 extends StatefulWidget {
  @override
  _Step4Of4State createState() => _Step4Of4State();
}

class _Step4Of4State extends State<Step4Of4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Stap 4 of 4",
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
                            "Review and \npay",
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
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "01-03 Oct, 2 guests, B&B",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.75),
                              fontSize: 16.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: Text(
                            "Add payment methods",
                            style: TextStyle(
                              // color: Color(0xFF61498C),
                              fontSize: 17.0,
                              fontFamily: 'SFCompactDisplay',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: Icon(Icons.chevron_right),
                        ),
                        Divider(),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              'Standard double room',
                              style: TextStyle(
                                color: Color(0xFF363636),
                                fontSize: 14.0,
                                fontFamily: 'SF Pro Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            new Text(
                              '\$ 70',
                              style: TextStyle(
                                color: Color(0xFF363636),
                                fontSize: 14.0,
                                fontFamily: 'SF Pro Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              'Executive king room',
                              style: TextStyle(
                                color: Color(0xFF363636),
                                fontSize: 14.0,
                                fontFamily: 'SF Pro Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            new Text(
                              '\$ 70',
                              style: TextStyle(
                                color: Color(0xFF363636),
                                fontSize: 14.0,
                                fontFamily: 'SF Pro Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              'Taxes and Fees',
                              style: TextStyle(
                                color: Color(0xFF363636),
                                fontSize: 14.0,
                                fontFamily: 'SF Pro Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            new Text(
                              '\$ 24',
                              style: TextStyle(
                                color: Color(0xFF363636),
                                fontSize: 14.0,
                                fontFamily: 'SF Pro Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              'Have a coupon?',
                              style: TextStyle(
                                color: Color(0xFF61498C),
                                fontSize: 14.0,
                                fontFamily: 'SF Pro Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            new Text(
                              '',
                              style: TextStyle(
                                color: Color(0xFF363636),
                                fontSize: 14.0,
                                fontFamily: 'SF Pro Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                              'Total',
                              style: TextStyle(
                                color: Color(0xFF363636),
                                fontSize: 14.0,
                                fontFamily: 'SF Pro Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            new Text(
                              '\$ 164',
                              style: TextStyle(
                                color: Color(0xFF363636),
                                fontSize: 14.0,
                                fontFamily: 'SF Pro Text',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Cancellation policy",
                            style: TextStyle(
                              // color: Color(0xFF61498C),
                              fontSize: 17.0,
                              fontFamily: 'SFCompactDisplay',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Under every HotelsHippo cancellation policy, a guest can receive a full refund of Airbnb service fee within 48 hours of booking. The cleaning fee also be refunded when the accommodation fees are refunded.\n\nHowever, the main diffrences between each cancellation policy are when the guest is required to cancel in order to recieve a refund and the amounts of refund',
                            style: TextStyle(
                              color: Color(0xFF363636),
                              fontSize: 14.0,
                              fontFamily: 'SF Pro Text',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.07,
                          margin: EdgeInsets.only(bottom: 20.0),
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
                                      fullscreenDialog: true,
                                        builder: (context) => Filters()));
                              },
                              child: Text(
                                'Pay Now',
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
