import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hotelshippo/menu/review_details.dart';

class AllReviews extends StatefulWidget {
  @override
  _AllReviewsState createState() => _AllReviewsState();
}

class _AllReviewsState extends State<AllReviews> {
  List<String> nameArray1 = [
    "Orchid Villa ,Kandy",
    "Orchid Villa ,Kandy",
    "Orchid Villa ,Kandy",
    "Orchid Villa ,Kandy",
    "Orchid Villa ,Kandy",
    "Orchid Villa ,Kandy",
    "Orchid Villa ,Kandy",
    "Orchid Villa ,Kandy",
    "Orchid Villa ,Kandy",
    "Orchid Villa ,Kandy"
  ];
  List<String> locationArray1 = [
    "Reviewed : 2 September 2019",
    "Reviewed : 2 September 2019",
    "Reviewed : 2 September 2019",
    "Reviewed : 2 September 2019",
    "Reviewed : 2 September 2019",
    "Reviewed : 2 September 2019",
    "Reviewed : 2 September 2019",
    "Reviewed : 2 September 2019",
    "Reviewed : 2 September 2019",
    "Reviewed : 2 September 2019",
  ];
  List<String> imgArray1 = [
    "review.png",
    "review.png",
    "review.png",
    "review.png",
    "review.png",
    "review.png",
    "review.png",
    "review.png",
    "review.png",
    "review.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              brightness: Brightness.light,
              iconTheme: IconThemeData(color: Colors.black),
              title: Center(
                child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "All Reviews",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontFamily: 'SF Pro Text',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 5),
                      new Container(
                        // color: Colors.red,
                        margin: EdgeInsets.only(top: 1.0),
                        height: 6,
                        child: Image(
                          image: AssetImage("assets/menu/ChevronDown.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                ),
              ),
              centerTitle: true,
            ),
            body: Container(child: mainBody())));
  }

  Widget mainBody() {
    return Container(child: _stayFilter(context));
  }

//Stay Filter listview
  Widget _stayFilter(BuildContext context) {
    //dynamic Layout
    var mediaQuery = MediaQuery.of(context).size;
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
                      // height: MediaQuery.of(context).size.height * 0.27,
                      //width: MediaQuery.of(context).size.width * 0.7,
                      child: SlideAnimation(
                        verticalOffset: 200,
                        child: FadeInAnimation(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            margin: EdgeInsets.only(
                                right: 10.0, left: 10.0, bottom: 6.0, top: 2.0),
                            child: Column(children: <Widget>[
                              ListTile(
                                dense: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 0, 10, 0),
                                leading: CircleAvatar(
                                  child: Container(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/menu/${imgArray1[index]}"),
                                      fit: BoxFit.fill,
                                      //height: MediaQuery.of(context).size.height * 0.04,
                                    ),
                                  ),
                                ),
                                title: Text(
                                  '${nameArray1[index]}',
                                  style: TextStyle(
                                    color: Color(0xFF4B4B4B),
                                    fontSize: 17.0,
                                    fontFamily: 'SF Pro Display',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                subtitle: Text(
                                  '${locationArray1[index]}',
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
                                  maxLines: 4,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(height: 8),
                              Center(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height *
                                      0.052,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF4C3C73),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(12.0),
                                        bottomLeft: Radius.circular(12.0)),
                                  ),
                                  alignment: Alignment.center,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Builder(builder: (context) {
                                          // var controller =
                                          //     ExpandableController.of(context);
                                          return FlatButton(
                                            textColor: Color(0xFF61498C),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                    fullscreenDialog: false,
                                                    builder: (context) =>
                                                        ReviewDetails()),
                                              );
                                            },
                                            child: Text(
                                              "Show Review",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0,
                                                fontFamily: 'SF Pro Display',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            //   shape: CircleBorder(
                                            //       side: BorderSide(color: Colors.transparent)),
                                          );
                                        }),
                                      ],
                                    ),
                                  ),
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
