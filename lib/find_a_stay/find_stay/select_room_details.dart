import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:hotelshippo/find_a_stay/find_stay/view_rooms.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:readmore/readmore.dart';
import './view_rooms.dart';

class SelectRoomDetails extends StatefulWidget {
  @override
  _SelectRoomDetailsState createState() => _SelectRoomDetailsState();
}

class _SelectRoomDetailsState extends State<SelectRoomDetails> {
  var rating = 4.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height * 0.42,
                    width: double.infinity,
                    child: Carousel(
                        boxFit: BoxFit.cover,
                        autoplay: true,
                        animationCurve: Curves.fastOutSlowIn,
                        animationDuration: Duration(seconds: 5),
                        dotSize: 6.0,
                        dotSpacing: 15.0,
                        dotIncreaseSize: 1.2,
                        dotIncreasedColor: Color(0xFF5C4586),
                        dotBgColor: Colors.transparent,
                        dotPosition: DotPosition.bottomCenter,
                        dotVerticalPadding: 0.0,
                        showIndicator: true,
                        indicatorBgPadding: 10.0,
                        images: [
                          ExactAssetImage("assets/findStay/slide.png"),
                          ExactAssetImage("assets/findStay/slide.png"),
                          ExactAssetImage("assets/findStay/slide.png"),
                          ExactAssetImage("assets/findStay/slide.png"),
                          ExactAssetImage("assets/findStay/slide.png"),
                        ])),
                //AppBar
                AppBar(
                  backgroundColor: Colors.transparent,
                  brightness: Brightness.light,
                  iconTheme: IconThemeData(color: Colors.black),
                  elevation: 0.0,
                  title: FlatButton(
                    textColor: Color(0xFF61498C),
                    onPressed: () {
                      print("object");
                     // Navigator.pop(context);
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Image(
                          image: AssetImage("assets/findStay/share.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    shape: CircleBorder(
                        side: BorderSide(color: Colors.transparent)),
                  ),
                  centerTitle: true,
                  leading: FlatButton(
                    textColor: Color(0xFF61498C),
                    onPressed: () {
                      print("object");
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.035,
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Image(
                          image: AssetImage("assets/findStay/backBt.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    shape: CircleBorder(
                        side: BorderSide(color: Colors.transparent)),
                  ),
                  actions: <Widget>[
                    FlatButton(
                      textColor: Color(0xFF61498C),
                      onPressed: () {
                        print("object");
                       // Navigator.pop(context);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                        child: AspectRatio(
                          aspectRatio: 1 / 1,
                          child: Image(
                            image: AssetImage("assets/findStay/heart2.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      shape: CircleBorder(
                          side: BorderSide(color: Colors.transparent)),
                    ),
                  ],
                ),
              ]),
              SizedBox(height: 15.0),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      // align the text to the left instead of centered
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Orchid Villa",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 2.0),
                        SmoothStarRating(
                            allowHalfRating: true,
                            onRatingChanged: (v) {
                              rating = v;
                              setState(() {});
                            },
                            starCount: 5,
                            rating: rating,
                            size: 15,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            color: Color(0xFFFAC917),
                            borderColor: Color(0xFFFAC917),
                            spacing: 0.0)
                      ],
                    ),
                    Container(
                      color: Color(0xFF4C3C73),
                      padding: EdgeInsets.all(4.5),
                      child: Column(children: <Widget>[
                        Text(
                          "Ratings",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8.0,
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
                            fontSize: 16.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
//
              SizedBox(height: 12.0),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ReadMoreText(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of lorem ipsum.',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.79),
                    fontSize: 15.0,
                    fontFamily: 'SF Pro Display',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.justify,
                  trimLines: 3,
                  colorClickableText: Colors.black.withOpacity(0.79),
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Read more',
                  trimExpandedText: ' Read less',
                ),
              ),
              //
              Container(
                width: MediaQuery.of(context).size.width * 0.97,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: ListTile(
                        title: Text(
                          "Amentities",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.79),
                            fontSize: 15.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: Container(
                          height: MediaQuery.of(context).size.height * 0.015,
                          child: AspectRatio(
                            aspectRatio: 1 / 1,
                            child: Image(
                              image: AssetImage("assets/menu/ChevronDown.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Divider()),
                  ],
                ),
              ),
              //
              Container(
                width: MediaQuery.of(context).size.width * 0.97,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: ListTile(
                        title: Text(
                          "Reviews",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.79),
                            fontSize: 15.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: Container(
                          height: MediaQuery.of(context).size.height * 0.015,
                          child: AspectRatio(
                            aspectRatio: 1 / 1,
                            child: Image(
                              image: AssetImage("assets/menu/ChevronDown.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Divider()),
                  ],
                ),
              ),
              //
              Container(
                width: MediaQuery.of(context).size.width * 0.97,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: ListTile(
                        title: Text(
                          "Rooms",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.79),
                            fontSize: 15.0,
                            fontFamily: 'SF Pro Display',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: Container(
                          height: MediaQuery.of(context).size.height * 0.015,
                          child: AspectRatio(
                            aspectRatio: 1 / 1,
                            child: Image(
                              image: AssetImage("assets/menu/ChevronDown.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Divider()),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Container(
                width: MediaQuery.of(context).size.width * 0.91,
                height: MediaQuery.of(context).size.height * 0.07,
                margin: EdgeInsets.only(bottom: 20.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/btnBack.png'),
                      fit: BoxFit.fill),
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
                                    builder: (context) => ViewRooms()),
                              );
                    },
                    child: Text(
                      'VIEW ROOMS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: 'SF Pro Display',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
