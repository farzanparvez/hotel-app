import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import './select_room_details.dart';

class StayFilter extends StatefulWidget {
  @override
  _StayFilterState createState() => _StayFilterState();
}

class _StayFilterState extends State<StayFilter> {
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
    "10th Lane, Kundasale",
    "10th Lane, Kundasale",
    "10th Lane, Kundasale",
    "10th Lane, Kundasale",
    "10th Lane, Kundasale",
    "10th Lane, Kundasale",
    "10th Lane, Kundasale",
    "10th Lane, Kundasale",
    "10th Lane, Kundasale",
    "10th Lane, Kundasale",
  ];
  List<String> imgArray1 = [
    "stayList.png",
    "stayList1.png",
    "stayList2.png",
    "stayList1.png",
    "stayList2.png",
    "stayList1.png",
    "stayList2.png",
    "stayList1.png",
    "stayList2.png",
    "stayList1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Kandy, 01 Oct - Oct 03",
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
        body: Center(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.98,
            child: mainBody(),
          ),
        ),
      ),
    );
  }

  Widget mainBody() {
    return Stack(
      children: <Widget>[
        Container(child: _stayFilter()),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.03,
          child: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Container(
              color: Colors.transparent,
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.5,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Sign In Button
                  new FlatButton(
                    splashColor: Colors.white54,
                    color: Color(0xFF5D4788),
                    onPressed: () {},
                    child: new Container(
                        padding: EdgeInsets.only(left: 0.0),
                        //height: MediaQuery.of(context).size.height * 0.05,
                        child: AspectRatio(
                          aspectRatio: 1 / 1,
                          child: Image(
                            image: AssetImage("assets/findStay/sort.png"),
                            fit: BoxFit.contain,
                          ),
                        )),
                  ),
                  Container(
                    width: 1,
                    color: Colors.white,
                  ),
                  new FlatButton(
                    splashColor: Colors.white54,
                    color: Color(0xFF5D4788),
                    onPressed: () {},
                    child: new Container(
                        padding: EdgeInsets.only(left: 0.0),
                        //height: MediaQuery.of(context).size.height * 0.05,
                        child: AspectRatio(
                          aspectRatio: 1 / 1,
                          child: Image(
                            image: AssetImage("assets/findStay/filter.png"),
                            fit: BoxFit.contain,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

//Stay Filter listview
  Widget _stayFilter() {
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
                      height: MediaQuery.of(context).size.height * 0.27,
                      //width: MediaQuery.of(context).size.width * 0.7,
                      child: SlideAnimation(
                        verticalOffset: 200,
                        child: FadeInAnimation(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    fullscreenDialog: false,
                                    builder: (context) => SelectRoomDetails()),
                              );
                            },
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
                                            aspectRatio: 0.65 / 1,
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/findStay/${imgArray1[index]}"),
                                              fit: BoxFit.fill,
                                            ),
                                          )),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(
                                              top: 7.0, left: 8.0),
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
                                                  fontSize: 16.0,
                                                  fontFamily: 'SF Pro Display',
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Image(
                                                    image: AssetImage(
                                                        "assets/findStay/location.png"),
                                                    fit: BoxFit.fill,
                                                    height: 10.0,
                                                  ),
                                                  SizedBox(width: 6.0),
                                                  Text(
                                                    locationArray1[index],
                                                    style: TextStyle(
                                                      color: Color(0xFF24123A),
                                                      fontSize: 12.0,
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 7.0,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Image(
                                                    image: AssetImage(
                                                        "assets/findStay/dot.png"),
                                                    fit: BoxFit.fill,
                                                    height: 4.5,
                                                  ),
                                                  SizedBox(width: 6.0),
                                                  Text(
                                                    "Only two of these prices are left",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 11.0,
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 2.0,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Image(
                                                    image: AssetImage(
                                                        "assets/findStay/dot.png"),
                                                    fit: BoxFit.fill,
                                                    height: 4.5,
                                                  ),
                                                  SizedBox(width: 6.0),
                                                  Expanded(
                                                    child: Text(
                                                      "Reservation possible without a Credit card, Free Cancellation.",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11.0,
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 2.0,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Image(
                                                    image: AssetImage(
                                                        "assets/findStay/dot.png"),
                                                    fit: BoxFit.fill,
                                                    height: 4.5,
                                                  ),
                                                  SizedBox(width: 6.0),
                                                  Text(
                                                    "Breakfast included",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 11.0,
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.035,
                                              ),
                                              Text(
                                                "\$ 59",
                                                style: TextStyle(
                                                  color: Color(0xFF4C3C73),
                                                  fontSize: 20.0,
                                                  fontFamily: 'SF Pro Display',
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              Text(
                                                "includes tax and charges",
                                                style: TextStyle(
                                                  color: Color(0xFF9D9D9D),
                                                  fontSize: 11.0,
                                                  fontFamily: 'SF Pro Display',
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w400,
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
                                Positioned(
                                  bottom:
                                      MediaQuery.of(context).size.height * 0.04,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.22,
                                    child: AspectRatio(
                                      aspectRatio: 1 / 0.3,
                                      child: Image(
                                        image: AssetImage(
                                            "assets/findStay/offerLbl.png"),
                                        fit: BoxFit.fill,
                                        //height: MediaQuery.of(context).size.height*0.1,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: MediaQuery.of(context).size.height *
                                      0.018,
                                  top: MediaQuery.of(context).size.height *
                                      0.012,
                                  child: Column(children: <Widget>[
                                    Text(
                                      "9.5",
                                      style: TextStyle(
                                        color: Color(0xFF4C3C73),
                                        fontSize: 16.0,
                                        fontFamily: 'SF Pro Display',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Reviews",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 8.0,
                                        fontFamily: 'SF Pro Display',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ]),
                                )
                              ]),
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
