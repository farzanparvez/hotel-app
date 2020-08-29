import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:custom_switch/custom_switch.dart';

class NotificationSettings extends StatefulWidget {
  @override
  _NotificationSettingsState createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  @override
  Widget build(BuildContext context) {
    //dynamic Layout
    var mediaQuery = MediaQuery.of(context).size;
    List<String> nameArray1 = [
      "Booking Confirmation",
      "Booking Modification",
      "Booking Cancellation"
    ];

    List<String> nameArray2 = [
      "Receive Offers",
      "Bid Expiration",
      "Offer Expiration",
    ];

    List<String> nameArray3 = [
      "Review Invit",
      "Review Online",
      "Review Check-In",
      "Upload Photos Invite",
    ];
    List<String> nameArray4 = [
      "Refer A Friend promotions",
      "Rewards status update",
    ];
    List<String> nameArray5 = [
      "Genius updates",
      "Your membership",
    ];
    bool status = true;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        // statusBarColor is used to set Status bar color in Android devices.
        statusBarColor: Colors.white,

        // To make Status bar icons color white in Android devices.
        statusBarIconBrightness: Brightness.dark,

        // statusBarBrightness is used to set Status bar icon color in iOS.
        statusBarBrightness: Brightness.dark,
        // Here light means dark color Status bar icons.
      ),
    );
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Settings",
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
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
          ],
        ),
        body: Container(
            child: CustomScrollView(slivers: <Widget>[
          SliverStickyHeader(
            header: Container(
              // height: mediaQuery.height * 0.027,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              //alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Bookings",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 17.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Get notifications about confirmations, modifications and cancellations",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 13.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Container(
                  height: MediaQuery.of(context).size.height * 0.078,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    margin: EdgeInsets.only(bottom: 1.0),
                    child: ListTile(
                      dense: true,
                      onTap: () {
                        print("account");
                      },
                      title: Text(
                        '${nameArray1[i]}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: CustomSwitch(
                        activeColor: Color(0xFF61498C),
                        value: status,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            status = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                childCount: nameArray1.length,
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              // height: mediaQuery.height * 0.027,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              //alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Bids and Offers",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 17.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Get notifications about receiving offers and expirations",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 13.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Container(
                  height: MediaQuery.of(context).size.height * 0.078,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    margin: EdgeInsets.only(bottom: 1.0),
                    child: ListTile(
                      dense: true,
                      onTap: () {
                        print("account");
                      },
                      title: Text(
                        '${nameArray2[i]}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: CustomSwitch(
                        activeColor: Color(0xFF61498C),
                        value: status,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            status = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                childCount: nameArray2.length,
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              // height: mediaQuery.height * 0.027,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              //alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Reviews",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 17.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Get notifications to write a review, rate your check-in, upload photos and see your review live!",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 13.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Container(
                  height: MediaQuery.of(context).size.height * 0.078,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    margin: EdgeInsets.only(bottom: 1.0),
                    child: ListTile(
                      dense: true,
                      onTap: () {
                        print("account");
                      },
                      title: Text(
                        '${nameArray3[i]}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: CustomSwitch(
                        activeColor: Color(0xFF61498C),
                        value: status,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            status = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                childCount: nameArray3.length,
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              // height: mediaQuery.height * 0.027,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              //alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("BookRefer A Friend Programings",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 17.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Get notifications about the Refer A Friend program, the status of your referral rewards, and new promotional campaigns.",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 13.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Container(
                  height: MediaQuery.of(context).size.height * 0.078,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    margin: EdgeInsets.only(bottom: 1.0),
                    child: ListTile(
                      dense: true,
                      onTap: () {
                        print("account");
                      },
                      title: Text(
                        '${nameArray4[i]}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: CustomSwitch(
                        activeColor: Color(0xFF61498C),
                        value: status,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            status = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                childCount: nameArray4.length,
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              // height: mediaQuery.height * 0.027,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              //alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Loyalty Program",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 17.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Get notifications about our loyalty program, your membership status, and progress.",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 13.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Container(
                  height: MediaQuery.of(context).size.height * 0.078,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    margin: EdgeInsets.only(bottom: 1.0),
                    child: ListTile(
                      dense: true,
                      onTap: () {
                        print("account");
                      },
                      title: Text(
                        '${nameArray5[i]}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: CustomSwitch(
                        activeColor: Color(0xFF61498C),
                        value: status,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            status = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                childCount: nameArray5.length,
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              height: mediaQuery.height * 0.06,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                '',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ])));
  }
}
