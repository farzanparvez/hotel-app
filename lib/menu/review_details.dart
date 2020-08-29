import 'package:flutter/material.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

class ReviewDetails extends StatefulWidget {
  @override
  _ReviewDetailsState createState() => _ReviewDetailsState();
}

class _ReviewDetailsState extends State<ReviewDetails> {
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
                "Orchid Villa, Kandy",
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
              child: Container(
                  child: Column(children: <Widget>[
                SizedBox(height: 15),
                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  leading: CircleAvatar(
                    child: Container(
                      child: Image(
                        image: AssetImage("assets/menu/review.png"),
                        fit: BoxFit.fill,
                        //height: MediaQuery.of(context).size.height * 0.04,
                      ),
                    ),
                  ),
                  title: Text(
                    'Orchid Villa, Kandy',
                    style: TextStyle(
                      color: Color(0xFF4B4B4B),
                      fontSize: 17.0,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    'Reviewed : 2 September 2019',
                    style: TextStyle(
                      color: Color(0xFF4B4B4B),
                      fontSize: 12.0,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Container(
                    height: mediaQuery.height * 0.05,
                    color: Color(0xFF4C3C73),
                    padding: EdgeInsets.all(4.5),
                    child: Column(children: <Widget>[
                      Text(
                        "Ratings",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 7.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "9.5",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ]),
                  ),
                ),
                Divider(),
                Container(
                  width: mediaQuery.width * 0.86,
                  child: Text(
                    'This was in a lovely beautiful setting just outside of bust ling Kandy.We stayed in the new deluxe family room which is spacious and well designed. Lovely bathroom but gets very wet and slippery from the shower and the shower attachments kept fallin. This was in a lovely beautiful setting just outside of bustling Kandy. We stayed in the new deluxe family room',
                    style: TextStyle(
                      color: Color(0xFF4B4B4B),
                      fontSize: 12.0,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 6,
                  ),
                ),
                SizedBox(height: 15),
                Align(
                    child: Container(
                        height: mediaQuery.height, child: mainBody())),
              ])),
            )));
  }

  Widget mainBody() {
    return Container(child: myListView());
  }

  Widget myListView() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.86,
      alignment: Alignment.center,
      //color: Colors.red,
      child: ListView(children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Location",
                  style: TextStyle(
                    color: Color(0xFF4B4B4B),
                    fontSize: 14.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "8.6",
                  style: TextStyle(
                    color: Color(0xFF4B4B4B),
                    fontSize: 14.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            LinearPercentIndicator(
              // backgroundColor: Colors.yellow,
              progressColor: Color(0xFF4C3C73),
              width: MediaQuery.of(context).size.width * 0.85,
              center: new Text(
                '',
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              animation: true,
              animationDuration: 1200,
              lineHeight: 10.0,
              percent: 0.86,
            ),
          ],
        ),
        //
        SizedBox(height: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Cleanliness",
                  style: TextStyle(
                    color: Color(0xFF4B4B4B),
                    fontSize: 14.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "9.5",
                  style: TextStyle(
                    color: Color(0xFF4B4B4B),
                    fontSize: 14.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            LinearPercentIndicator(
              // backgroundColor: Colors.yellow,
              progressColor: Color(0xFF4C3C73),
              width: MediaQuery.of(context).size.width * 0.85,
              center: new Text(
                '',
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              animation: true,
              animationDuration: 1200,
              lineHeight: 10.0,
              percent: 0.95,
            ),
          ],
        ),
        //
        SizedBox(height: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Location",
                  style: TextStyle(
                    color: Color(0xFF4B4B4B),
                    fontSize: 14.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "8.6",
                  style: TextStyle(
                    color: Color(0xFF4B4B4B),
                    fontSize: 14.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            LinearPercentIndicator(
              // backgroundColor: Colors.yellow,
              progressColor: Color(0xFF4C3C73),
              width: MediaQuery.of(context).size.width * 0.85,
              center: new Text(
                '',
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              animation: true,
              animationDuration: 1200,
              lineHeight: 10.0,
              percent: 0.86,
            ),
          ],
        ),
        //
        SizedBox(height: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Cleanliness",
                  style: TextStyle(
                    color: Color(0xFF4B4B4B),
                    fontSize: 14.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "9.5",
                  style: TextStyle(
                    color: Color(0xFF4B4B4B),
                    fontSize: 14.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            LinearPercentIndicator(
              // backgroundColor: Colors.yellow,
              progressColor: Color(0xFF4C3C73),
              width: MediaQuery.of(context).size.width * 0.85,
              center: new Text(
                '',
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              animation: true,
              animationDuration: 1200,
              lineHeight: 10.0,
              percent: 0.95,
            ),
          ],
        ),
        //
        SizedBox(height: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Cleanliness",
                  style: TextStyle(
                    color: Color(0xFF4B4B4B),
                    fontSize: 14.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "9.5",
                  style: TextStyle(
                    color: Color(0xFF4B4B4B),
                    fontSize: 14.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            LinearPercentIndicator(
              // backgroundColor: Colors.yellow,
              progressColor: Color(0xFF4C3C73),
              width: MediaQuery.of(context).size.width * 0.85,
              center: new Text(
                '',
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              animation: true,
              animationDuration: 1200,
              lineHeight: 10.0,
              percent: 0.95,
            ),
          ],
        ),
        //
        SizedBox(height: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Cleanliness",
                  style: TextStyle(
                    color: Color(0xFF4B4B4B),
                    fontSize: 14.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "9.5",
                  style: TextStyle(
                    color: Color(0xFF4B4B4B),
                    fontSize: 14.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            LinearPercentIndicator(
              // backgroundColor: Colors.yellow,
              progressColor: Color(0xFF4C3C73),
              width: MediaQuery.of(context).size.width * 0.85,
              center: new Text(
                '',
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              animation: true,
              animationDuration: 1200,
              lineHeight: 10.0,
              percent: 0.95,
            ),
          ],
        ),
      ]),
    );
  }
}
