import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:some_calendar/some_calendar.dart';
import 'package:jiffy/jiffy.dart';
import './stay_guest.dart';

class SelectStayDates extends StatefulWidget {
  @override
  _SelectStayDatesState createState() => _SelectStayDatesState();
}

class _SelectStayDatesState extends State<SelectStayDates> {
  DateTime selectedDate = DateTime.now();
  List<DateTime> selectedDates = List();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              brightness: Brightness.light,
              iconTheme: IconThemeData(color: Colors.black),
              title: Text("")),
          body: SingleChildScrollView(
            child: Container(
              child: Column(children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.03),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "location",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontFamily: 'SF Pro Text',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.03),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Kandy, Central Province",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Divider(height: 3, color: Colors.grey),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.03),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Choose your dates",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontFamily: 'SF Pro Text',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Divider(height: 3, color: Colors.grey),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.88,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Check In",
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: 12.0,
                                        fontFamily: 'SF Pro Text',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Container(
                                  //  // margin: EdgeInsets.only(
                                  //       left: MediaQuery.of(context).size.height * 0.03),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Wednesday, Oct 01",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Column(
                            children: <Widget>[
                              Align(
                                child: Container(
                                  // margin: EdgeInsets.only(left: 20.0),
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Check Out",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: 12.0,
                                      fontFamily: 'SF Pro Text',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Align(
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Friday, Oct 03",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontFamily: 'SF Pro Display',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Divider(height: 3, color: Colors.grey),
                Padding(
                  padding: EdgeInsets.all(18),
                  child: SomeCalendar(
                    primaryColor: Color(0xff5833A5),
                    mode: SomeMode.Range,
                    isWithoutDialog: true,
                    selectedDates: selectedDates,
                    startDate: Jiffy().subtract(years: 3),
                    lastDate: Jiffy().add(months: 9),
                    done: (date) {
                      setState(() {
                        selectedDates = date;
                        // showSnackbar(selectedDates.toString());
                      });
                    },
                  ),
                ),
               // SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Divider(height: 3, color: Colors.grey),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => StayGuest()),
                    );
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Color(0xFF5C4586),
                      fontSize: 16.0,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              ]),
            ),
          )),
    );
  }
}
