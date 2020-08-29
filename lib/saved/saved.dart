import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './properties.dart';
import './locations.dart';

class Saved extends StatefulWidget {
  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
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
    return new MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: new Container(
              color: Colors.white,
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    new Expanded(child: new Container()),
                    new TabBar(
                      labelColor: Color(0xFF61498C),
                      indicatorColor: Color(0xFF61498C),
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 3.0,
                      labelPadding: EdgeInsets.only(
                          top: 0.0,
                          bottom: MediaQuery.of(context).size.height * 0.0175,
                          left: 0.0,
                          right: 0.0),
                      // indicatorPadding: EdgeInsets.only(
                      //    right: MediaQuery.of(context).size.height * 0.0175),
                      tabs: [
                        new Text(
                          "Properties",
                          style: TextStyle(
                            //color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        new Text(
                          "Locations",
                          style: TextStyle(
                            //color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    // Border
                    Container(
                      // Negative padding
                      transform: Matrix4.translationValues(0.0, -2.6, 0.0),
                      // Add top border
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Color(0xFFc3c3c3),
                            width: 0.3,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              Properties(),
              Locations(),
            ],
          ),
        ),
      ),
    );
  }
}
