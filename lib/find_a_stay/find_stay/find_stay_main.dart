import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotelshippo/find_a_stay/request_bid/request_bid_stay_guest.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import './search_stay.dart';

class FindStayMain extends StatefulWidget {
  @override
  _FindStayMainState createState() => _FindStayMainState();
}

class _FindStayMainState extends State<FindStayMain> {
  List<String> nameArray = [
    "Orchid Villa, Kandy",
    "Jetwing Yala",
    "Orchid Villa, Kandy",
    "Jetwing Yala",
    "Orchid Villa, Kandy",
    "Jetwing Yala",
    "Orchid Villa, Kandy",
    "Jetwing Yala",
    "Orchid Villa, Kandy",
    "Jetwing Yala"
  ];
  List<String> locationArray = [
    "Kandy, Kundasale",
    "Palatupana, Kirinda",
    "Kandy, Kundasale",
    "Palatupana, Kirinda",
    "Kandy, Kundasale",
    "Palatupana, Kirinda",
    "Kandy, Kundasale",
    "Palatupana, Kirinda",
    "Kandy, Kundasale",
    "Palatupana, Kirinda",
  ];
  List<String> imgArray = [
    "recent1.png",
    "recent2.png",
    "recent1.png",
    "recent2.png",
    "recent1.png",
    "recent2.png",
    "recent1.png",
    "recent2.png",
    "recent1.png",
    "recent2.png",
  ];
  List<String> imgArray2 = [
    "apartment.png",
    "apartment.png",
    "apartment.png",
    "apartment.png",
    "apartment.png",
    "apartment.png",
    "apartment.png",
    "apartment.png",
    "apartment.png",
    "apartment.png",
  ];

  List<String> nameArray2 = [
    "Apartment",
    "Resorts",
    "Villas",
    "Cabins",
    "Apartment",
    "Resorts",
    "Villas",
    "Cabins",
    "Apartment",
    "Resorts",
  ];

  var rating = 4.0;

  List<String> nameArray1 = [
    "Off-peak deals",
    "Off-peak deals",
    "Off-peak deals",
    "Off-peak deals",
    "Off-peak deals",
    "Off-peak deals",
    "Off-peak deals",
    "Off-peak deals",
    "Off-peak deals",
    "Off-peak deals"
  ];
  List<String> locationArray1 = [
    "Kandy, Kundasale",
    "Palatupana, Kirinda",
    "Kandy, Kundasale",
    "Palatupana, Kirinda",
    "Kandy, Kundasale",
    "Palatupana, Kirinda",
    "Kandy, Kundasale",
    "Palatupana, Kirinda",
    "Kandy, Kundasale",
    "Palatupana, Kirinda",
  ];
  List<String> imgArray1 = [
    "loc1.png",
    "loc2.png",
    "loc1.png",
    "loc2.png",
    "loc1.png",
    "loc2.png",
    "loc1.png",
    "loc2.png",
    "loc1.png",
    "loc2.png",
  ];

  @override
  Widget build(BuildContext context) {
    //dynamic layout
    var mediaQuery = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            // color: Colors.red, // Yellow
            width: mediaQuery.width * 0.93,
            child: Column(
                // mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(height: 20),
                  Container(
                    color: Colors.white, // Yellow
                    width: mediaQuery.width * 0.92,
                    child: Stack(children: <Widget>[
                      Row(children: <Widget>[
                        Stack(children: <Widget>[
                          new Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            width: MediaQuery.of(context).size.width * 0.49,
                            // margin: EdgeInsets.only(top: 0.0, left: 10, right: 10),
                            child: RaisedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      fullscreenDialog: false,
                                      builder: (context) => SearchStay()),
                                );
                                print('Button Clicked.');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      bottomLeft: Radius.circular(4.0))),
                              label: Text(
                                'Find a Stay',
                                style: TextStyle(
                                  color: Color(0xFF61498C),
                                  fontFamily: "SF Pro Text",
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              icon: Image(
                                image: AssetImage("assets/findStay/Search.png"),
                                fit: BoxFit.fill,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              textColor: Colors.white,
                              splashColor: Colors.grey,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.065,
                          width: MediaQuery.of(context).size.width * 0.4,
                          padding: EdgeInsets.all(0),
                          child: RaisedButton(
                              color: Color(0xFF61498C),
                              splashColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(4.0),
                                      bottomRight: Radius.circular(4.0))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                   CupertinoPageRoute(
                                      fullscreenDialog: false,
                                      builder: (context) => RequestBidStayGuest()),
                                );
                              },
                              child: Text(
                                "Request Bids",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "SF Pro Text",
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w100,
                                ),
                              )),
                        )
                      ]),
                      Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.065,
                          //alignment: Alignment.centerRight,
                          color: Colors.transparent,
                          width: mediaQuery.width * 0.14,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              color: Colors.transparent,
                              //height: MediaQuery.of(context).size.height * 0.065,
                              child: Image(
                                image: AssetImage("assets/findStay/Or2.png"),
                                fit: BoxFit.contain,
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.04,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Hello Simmons",
                        style: TextStyle(
                          color: Color(0xFF06102B),
                          fontFamily: "SF Pro Text",
                          fontSize: 28.0,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.04,
                  ),

                  //Properties Listview
                  Column(children: <Widget>[
                    Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Properties we have",
                            style: TextStyle(
                              color: Color(0xFF717895),
                              fontFamily: "SF Pro Text",
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: mediaQuery.width * 0.36),
                          Text(
                            "More",
                            style: TextStyle(
                              color: Color(0xFF717895),
                              fontFamily: "SF Pro Text",
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                    SizedBox(height: 8.0),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: _myProperties()),
                  ]),
                  SizedBox(
                    height: mediaQuery.height * 0.032,
                  ),

                  //Recent Searches
                  Column(children: <Widget>[
                    Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Recent searches",
                            style: TextStyle(
                              color: Color(0xFF717895),
                              fontFamily: "SF Pro Text",
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: mediaQuery.width * 0.405),
                          Text(
                            "More",
                            style: TextStyle(
                              color: Color(0xFF717895),
                              fontFamily: "SF Pro Text",
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                    SizedBox(height: 8),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: _mySearch()),
                  ]),
                  SizedBox(
                    height: mediaQuery.height * 0.032,
                  ),

                  //All offers
                  Column(children: <Widget>[
                    Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "All offers",
                            style: TextStyle(
                              color: Color(0xFF717895),
                              fontFamily: "SF Pro Text",
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: mediaQuery.width * 0.55),
                          Text(
                            "More",
                            style: TextStyle(
                              color: Color(0xFF717895),
                              fontFamily: "SF Pro Text",
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ]),
                    SizedBox(height: 8),
                    Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * 75,
                        margin:
                            EdgeInsets.only(right: mediaQuery.width * 0.055),
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: _myOffers()),
                  ]),
                ]),
          ),
        ),
      ),
    ));
  }

//Properties ListView
  Widget _myProperties() {
    return this.imgArray2.isNotEmpty
        ? AnimationLimiter(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: imgArray2.length,
                itemBuilder: (context, index) {
                  var nameArr = nameArray2[index];

                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: new Container(
                      //height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.28,
                      child: SlideAnimation(
                        horizontalOffset: 300,
                        child: FadeInAnimation(
                          child: Container(
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(6.0),
                            // ),
                            margin: EdgeInsets.only(
                                right: 4.0, left: 0.0, bottom: 0, top: 0),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Column(
                                children: <Widget>[
                                  Stack(children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.only(left: 0.0),
                                        //height: MediaQuery.of(context).size.height * 0.05,

                                        child: AspectRatio(
                                          aspectRatio: 1 / 0.47,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/findStay/${imgArray2[index]}"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        )),
                                  ]),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      padding:
                                          EdgeInsets.only(top: 5.0, left: 2.0),
                                      //color: Colors.red,
                                      child: Column(
                                        // align the text to the left instead of centered
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            nameArr,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.0,
                                              fontFamily: 'SF Pro Text',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          )
        : Container(
            child: Center(
                child: Text(
              "No properties available",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontFamily: 'SF Pro Display',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
              ),
            )),
            //color: Colors.red,
          );
  }

  //Search Listview
  Widget _mySearch() {
    return this.nameArray.isNotEmpty
        ? AnimationLimiter(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: nameArray.length,
                itemBuilder: (context, index) {
                  var nameArr = nameArray[index];

                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: new Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.36,
                      child: SlideAnimation(
                        horizontalOffset: 400,
                        child: FadeInAnimation(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            margin: EdgeInsets.only(
                                right: 4.0, left: 4.0, bottom: 2.0, top: 2.0),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Column(
                                children: <Widget>[
                                  Stack(children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.only(left: 0.0),
                                        //height: MediaQuery.of(context).size.height * 0.05,
                                        child: AspectRatio(
                                          aspectRatio: 1 / 0.75,
                                          child: Image(
                                            image: AssetImage(
                                                "assets/findStay/${imgArray[index]}"),
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                  ]),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      padding:
                                          EdgeInsets.only(top: 5.0, left: 7.0),
                                      //color: Colors.red,
                                      child: Column(
                                        // align the text to the left instead of centered
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            nameArr,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            locationArray[index],
                                            style: TextStyle(
                                              color: Color(0xFF8C92A9),
                                              fontSize: 10.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(height: 3.0),
                                          SmoothStarRating(
                                              allowHalfRating: true,
                                              onRatingChanged: (v) {
                                                rating = v;
                                                setState(() {});
                                              },
                                              starCount: 5,
                                              rating: rating,
                                              size: 9.66,
                                              filledIconData: Icons.star,
                                              halfFilledIconData:
                                                  Icons.star_half,
                                              defaultIconData:
                                                  Icons.star_border,
                                              color: Color(0xFFFAC917),
                                              borderColor: Color(0xFFFAC917),
                                              spacing: 0.0)
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          )
        : Container(
            child: Center(
                child: Text(
              "No recent search",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontFamily: 'SF Pro Display',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
              ),
            )),
            //color: Colors.red,
          );
  }

//Offers listview
  Widget _myOffers() {
    return nameArray1.isNotEmpty
        ? AnimationLimiter(
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: nameArray1.length,
                itemBuilder: (context, index) {
                  // final item = titles[index];
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: new Container(
                      height: MediaQuery.of(context).size.height * 0.13,
                      //width: MediaQuery.of(context).size.width * 0.7,
                      child: SlideAnimation(
                        verticalOffset: 200,
                        child: FadeInAnimation(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            margin: EdgeInsets.only(
                                right: 4.0, left: 4.0, bottom: 6.0, top: 2.0),
                            child: Stack(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.only(left: 0.0),
                                        //height: MediaQuery.of(context).size.height * 0.05,
                                        child: AspectRatio(
                                          aspectRatio: 0.95 / 1,
                                          child: Image(
                                            image: AssetImage(
                                                "assets/saved/${imgArray1[index]}"),
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(
                                            top: 3.0, left: 7.0),
                                        //color: Colors.red,
                                        child: Column(
                                          // align the text to the left instead of centered
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              nameArray1[index],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13.0,
                                                fontFamily: 'SF Pro Display',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Text(
                                              'School holidays are over but yours are not. Enjoy 20% off stays September-October',
                                              style: TextStyle(
                                                color: Color(0xFF8C92A9),
                                                fontSize: 10.0,
                                                fontFamily: 'SF Pro Display',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.left,
                                              maxLines: 5,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          )
        : Container(
            child: Center(
                child: Text(
              "No offers available",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontFamily: 'SF Pro Display',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
              ),
            )),
            //color: Colors.red,
          );
  }
}
