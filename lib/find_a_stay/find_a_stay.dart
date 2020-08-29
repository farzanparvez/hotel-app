import 'package:custom_navigator/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter/services.dart';
import '../saved/saved.dart';
import '../notifications/notification.dart';
import '../menu/settings.dart';
import '../bookings/bookings.dart';
import './find_stay/find_stay_main.dart';

class FindAStay extends StatefulWidget {
  FindAStay() : super();

  @override
  _FindAStayState createState() => _FindAStayState();
}

class _FindAStayState extends State<FindAStay> {
  int currentTabIndex = 0;
  // List<Widget> tabs = [
  //   Container(child: Center(child: Text("In Progress"))),
  //   Container(child: Center(child: Text("In Progress"))),
  //   Saved(),
  //   Notifications(),
  //   Settings(),
  // ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(

          // statusBarColor is used to set Status bar color in Android devices.
          statusBarColor: Colors.white,

          // To make Status bar icons color white in Android devices.
          statusBarIconBrightness: Brightness.dark,

          // statusBarBrightness is used to set Status bar icon color in iOS.
          statusBarBrightness: Brightness.dark
          // Here light means dark color Status bar icons.

          ),
    );

    return CustomScaffold(
      children: <Widget>[
        FindStayMain(),
        Bookings(),
        Saved(),
        Notifications(),
        Settings(),
      ],
      scaffold: Scaffold(
        // body: tabs[currentTabIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 10.0,
          unselectedFontSize: 10.0,
          onTap: onTapped,
          currentIndex: currentTabIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Container(
                margin: EdgeInsets.only(bottom: 5.0),
                height: 20,
                child: Image(
                  image: AssetImage("assets/findStay/find.png"),
                  fit: BoxFit.fill,
                ),
              ),
              activeIcon: new Container(
                margin: EdgeInsets.only(bottom: 5.0),
                height: 20,
                child: Image(
                  image: AssetImage("assets/findStay/findS.png"),
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  //color: Colors.white,
                  // fontSize: 16.0,
                  fontFamily: 'SF Pro Display',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: new Container(
                margin: EdgeInsets.only(bottom: 5.0),
                height: 20,
                child: Image(
                  image: AssetImage("assets/findStay/booking.png"),
                  fit: BoxFit.fill,
                ),
              ),
              activeIcon: new Container(
                margin: EdgeInsets.only(bottom: 5.0),
                height: 20,
                child: Image(
                  image: AssetImage("assets/findStay/bookingS.png"),
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                "Bookings",
                style: TextStyle(
                  //color: Colors.white,
                  // fontSize: 16.0,
                  fontFamily: 'SF Pro Display',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: new Container(
                margin: EdgeInsets.only(bottom: 5.0),
                height: 20,
                child: Image(
                  image: AssetImage("assets/findStay/heart.png"),
                  fit: BoxFit.fill,
                ),
              ),
              activeIcon: new Container(
                margin: EdgeInsets.only(bottom: 5.0),
                height: 20,
                child: Image(
                  image: AssetImage("assets/findStay/heartS.png"),
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                "Saved",
                style: TextStyle(
                  //color: Colors.white,
                  // fontSize: 16.0,
                  fontFamily: 'SF Pro Display',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Badge(
                badgeContent: Text(
                  '1',
                  style: TextStyle(
                    color: Colors.white,
                   // fontSize: 13.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                child: new Container(
                  margin: EdgeInsets.only(bottom: 5.0),
                  height: 20,
                  child: Image(
                    image: AssetImage("assets/findStay/bell.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              activeIcon: Badge(
                badgeContent: Text(
                  '1',
                  style: TextStyle(
                    color: Colors.white,
                   // fontSize: 10.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                child: new Container(
                  margin: EdgeInsets.only(bottom: 5.0),
                  height: 20,
                  child: Image(
                    image: AssetImage("assets/findStay/bellSelected.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text(
                "Notifications",
                style: TextStyle(
                  //color: Colors.white,
                  // fontSize: 16.0,
                  fontFamily: 'SF Pro Display',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: new Container(
                margin: EdgeInsets.only(bottom: 5.0),
                height: 20,
                child: Image(
                  image: AssetImage("assets/findStay/settingsIcon.png"),
                  fit: BoxFit.fill,
                ),
              ),
              activeIcon: new Container(
                margin: EdgeInsets.only(bottom: 5.0),
                height: 20,
                child: Image(
                  image: AssetImage("assets/findStay/settingsS.png"),
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                "Menu",
                style: TextStyle(
                  //color: Colors.white,
                  // fontSize: 16.0,
                  fontFamily: 'SF Pro Display',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
