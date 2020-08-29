import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:hotelshippo/menu/all_reviews.dart';
import './account.dart';
import './notification_setting.dart';
import '../menu/payment_method_list.dart';
import './coupon.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //dynamic Layout
    var mediaQuery = MediaQuery.of(context).size;
    List<String> nameArray1 = [
      "Accounts",
      "Message",
    ];
    List<String> imgArray1 = [
      "user.png",
      "msg.png",
    ];
    List<String> nameArray2 = [
      "Add payment method",
      "Add coupon",
      "Deals",
      "Reservation history",
      "Reviews",
      "List your property",
      "Favourites",
    ];
    List<String> imgArray2 = [
      "credit-card.png",
      "coupon.png",
      "deal.png",
      "stopwatch.png",
      "starR.png",
      "plus.png",
      "heart.png",
    ];
    List<String> nameArray3 = [
      "Notifications settings",
      "Terms and Conditions",
      "Privacy and Policy",
      "Customer Service Help",
      "Rate us",
    ];

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
          //iconTheme: IconThemeData(color: Colors.black),
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
        ),
        body: Container(
            child: CustomScrollView(slivers: <Widget>[
          SliverStickyHeader(
            header: Container(
              height: mediaQuery.height * 0.027,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                '',
                style: const TextStyle(color: Colors.white),
              ),
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
                        imgArray1[i] == "user.png"
                            ? Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    fullscreenDialog: false,
                                    builder: (context) => Accounts()),
                              )
                            : Text("");
                        print("account");
                      },
                      title: Row(children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(left: 0.0),
                            //height: MediaQuery.of(context).size.height * 0.05,
                            child: imgArray1[i] == "user.png"
                                ? Image(
                                    image: AssetImage("assets/menu/user.png"),
                                    fit: BoxFit.fill,
                                    height: MediaQuery.of(context).size.height *
                                        0.035,
                                  )
                                : Image(
                                    image: AssetImage("assets/menu/msg.png"),
                                    fit: BoxFit.fill,
                                    height: MediaQuery.of(context).size.height *
                                        0.025,
                                  )),
                        SizedBox(width: 15),
                        Text(
                          '${nameArray1[i]}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]),
                      trailing: Image(
                        image: AssetImage("assets/menu/ChevronRight.png"),
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height * 0.023,
                      ),
                    ),
                  ),
                ),
                childCount: 2,
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              height: mediaQuery.height * 0.05,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                '',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Container(
                  height: MediaQuery.of(context).size.height * 0.078,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    margin: EdgeInsets.only(bottom: 0.4),
                    child: ListTile(
                      dense: true,
                      onTap: () {
                        // nameArray2[i] == "Add payment method"
                        //     ? Navigator.push(
                        //         context,
                        //         CupertinoPageRoute(
                        //             fullscreenDialog: false,
                        //             builder: (context) => PaymentMethodList()),
                        //       )
                        //     : Navigator.push(
                        //         context,
                        //         CupertinoPageRoute(
                        //             fullscreenDialog: false,
                        //             builder: (context) => Coupon()),
                        //       );
                        if (nameArray2[i] == "Add payment method") {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                fullscreenDialog: false,
                                builder: (context) => PaymentMethodList()),
                          );
                        } else if (nameArray2[i] == "Reviews") {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                fullscreenDialog: false,
                                builder: (context) => AllReviews()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                fullscreenDialog: false,
                                builder: (context) => Coupon()),
                          );
                        }

                        print("AddPayment");
                        print("Add payment method");
                      },
                      title: Row(children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(left: 0.0),
                            //height: MediaQuery.of(context).size.height * 0.05,
                            child: nameArray2[i] == "Favourites"
                                ? Image(
                                    image: AssetImage(
                                        "assets/findStay/heartS.png"),
                                    fit: BoxFit.fill,
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
                                  )
                                : Image(
                                    image: AssetImage(
                                        "assets/menu/${imgArray2[i]}"),
                                    fit: BoxFit.fill,
                                    height: MediaQuery.of(context).size.height *
                                        0.032,
                                  )),
                        SizedBox(width: 15.0),
                        Text(
                          '${nameArray2[i]}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]),
                      trailing: Image(
                        image: AssetImage("assets/menu/ChevronRight.png"),
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height * 0.023,
                      ),
                    ),
                  ),
                ),
                childCount: imgArray2.length,
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              height: mediaQuery.height * 0.07,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                '',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Container(
                  height: MediaQuery.of(context).size.height * 0.078,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    margin: EdgeInsets.only(bottom: 0.4),
                    child: ListTile(
                      dense: true,
                      onTap: () {},
                      title: Text(
                        "Clear recently viewed",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Image(
                        image: AssetImage("assets/menu/ChevronRight.png"),
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height * 0.023,
                      ),
                    ),
                  ),
                ),
                childCount: 1,
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              height: mediaQuery.height * 0.05,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                '',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Container(
                  height: MediaQuery.of(context).size.height * 0.078,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    margin: EdgeInsets.only(bottom: 0.4),
                    child: ListTile(
                      dense: true,
                      onTap: () {
                        // nameArray3[i] == "Notifications settings"
                        //     ?
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              fullscreenDialog: false,
                              builder: (context) => NotificationSettings()),
                        );
                        // : Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             NotificationSettings()),
                        //   );
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
                      trailing: nameArray3[i] == "Notifications settings"
                          ? Image(
                              image: AssetImage("assets/menu/ChevronRight.png"),
                              fit: BoxFit.fill,
                              height:
                                  MediaQuery.of(context).size.height * 0.023,
                            )
                          : Text(""),
                    ),
                  ),
                ),
                childCount: nameArray3.length,
              ),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              height: mediaQuery.height * 0.04,
              color: Color(0xFF2F2F2F2),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                '',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, i) => Container(
                  height: MediaQuery.of(context).size.height * 0.078,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    margin: EdgeInsets.only(bottom: 0.4),
                    child: ListTile(
                      dense: true,
                      onTap: () {
                        print("firdu");
                      },
                      title: Text(
                        "Log out",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                childCount: 1,
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
