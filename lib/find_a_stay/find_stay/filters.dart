import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  RangeValues values = RangeValues(1, 100);
  RangeLabels labels = RangeLabels("1", "100");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              "Filters",
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
            child: Align(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Budget Per Night",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontFamily: 'SF Pro Text',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      RangeSlider(
                        min: 1,
                        max: 100,
                        values: values,
                        labels: labels,
                        //divisions: 5,
                        onChanged: (value) {
                          setState(() {
                            values = value;
                            labels = RangeLabels(
                              value.start.toString(),
                              value.end.toString(),
                            );
                          });
                        },
                      )
                    ],
                  )),
            ),
          )),
    );
  }
}
