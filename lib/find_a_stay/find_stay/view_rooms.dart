import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hotelshippo/find_a_stay/find_stay/step1of4.dart';

class ViewRooms extends StatefulWidget {
  @override
  _ViewRoomsState createState() => _ViewRoomsState();
}

class _ViewRoomsState extends State<ViewRooms> {
  List<String> nameArray = [
    "Executive King Room",
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
    "bedRoom.png",
    "bedRoom.png",
    "bedRoom.png",
    "bedRoom.png",
    "bedRoom.png",
    "bedRoom.png",
    "bedRoom.png",
    "bedRoom.png",
    "bedRoom.png",
    "bedRoom.png",
  ];

  //add and substraction
  int _n = 5;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Choose Rooms",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
              fontFamily: 'SF Pro Text',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
            ),
          ),
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SingleChildScrollView(child: Container(child: mainBody())),
      ),
    );
  }

//
  Widget mainBody() {
    return Column(children: <Widget>[
      SizedBox(
        height: 20.0,
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Container(
            height: MediaQuery.of(context).size.height * 0.56,
            width: MediaQuery.of(context).size.width * 0.95,
            child: _myRooms()),
      ),
      //
      Container(
        padding: EdgeInsets.all(0),
        //height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width,
        child: Card(
          margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12.0),
                topLeft: Radius.circular(12.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      'Standard double room',
                      style: TextStyle(
                        color: Color(0xFF363636),
                        fontSize: 14.0,
                        fontFamily: 'SF Pro Text',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    new Text(
                      '\$ 70',
                      style: TextStyle(
                        color: Color(0xFF363636),
                        fontSize: 14.0,
                        fontFamily: 'SF Pro Text',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      'Standard double room',
                      style: TextStyle(
                        color: Color(0xFF363636),
                        fontSize: 14.0,
                        fontFamily: 'SF Pro Text',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    new Text(
                      '\$ 70',
                      style: TextStyle(
                        color: Color(0xFF363636),
                        fontSize: 14.0,
                        fontFamily: 'SF Pro Text',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      'Total',
                      style: TextStyle(
                        color: Color(0xFF363636),
                        fontSize: 14.0,
                        fontFamily: 'SF Pro Text',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    new Text(
                      '\$ 150',
                      style: TextStyle(
                        color: Color(0xFF363636),
                        fontSize: 14.0,
                        fontFamily: 'SF Pro Text',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Divider(),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      'Breakfast included',
                      style: TextStyle(
                        color: Color(0xFF363636),
                        fontSize: 14.0,
                        fontFamily: 'SF Pro Text',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    new Text(
                      'Have a coupon?',
                      style: TextStyle(
                        color: Color(0xFF584382),
                        fontSize: 14.0,
                        fontFamily: 'SF Pro Text',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
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
                              fullscreenDialog: false,
                              builder: (context) => Step1Of4()),
                        );
                      },
                      child: Text(
                        'BOOK NOW',
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
      )
    ]);
  }

//Search Listview
  Widget _myRooms() {
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
                      width: MediaQuery.of(context).size.width * 0.85,
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
                                          aspectRatio: 1 / 0.5,
                                          child: Image(
                                            image: AssetImage(
                                                "assets/findStay/${imgArray[index]}"),
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                  ]),
                                  //
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding:
                                        EdgeInsets.only(top: 10.0, left: 10.0),
                                    //color: Colors.red,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Column(
                                          // align the text to the left instead of centered
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  new Container(
                                                    // color: Colors.red,
                                                    //width: mediaQuery.width * 0.1,
                                                    height: 10,
                                                    child: AspectRatio(
                                                      aspectRatio: 1 / 1,
                                                      child: Image(
                                                        image: AssetImage(
                                                            "assets/findStay/enterOffer.png"),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 6),
                                                  Text(
                                                    "Accept offers",
                                                    style: TextStyle(
                                                      color: Color(0xFFFEBB01),
                                                      fontSize: 11.0,
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ]),
                                            Text(
                                              nameArr,
                                              style: TextStyle(
                                                color: Color(0xFF484848),
                                                fontSize: 18.0,
                                                fontFamily: 'SF Pro Display',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Text(
                                              "1 Ex-large bed + 1 sofa bed",
                                              style: TextStyle(
                                                color: Color(0xFF484848),
                                                fontSize: 12.0,
                                                fontFamily: 'SF Pro Display',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            SizedBox(height: 3.0),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  //
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.76,
                                      child: Divider()),
                                  //
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 2.0, left: 10.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "BASIS",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Color(0xFFC3C3C3),
                                                  fontSize: 13.0,
                                                  fontFamily: 'SF Pro Display',
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              SizedBox(height: 5.0),
                                              Text(
                                                "Bed & Breakfast",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Color(0xFF757575),
                                                  fontSize: 14.0,
                                                  fontFamily: 'SF Pro Display',
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.15),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "SLEEP",
                                                softWrap: true,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Color(0xFFC3C3C3),
                                                  fontSize: 13.0,
                                                  fontFamily: 'SF Pro Display',
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              SizedBox(height: 5.0),
                                              new Container(
                                                // color: Colors.red,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.1,
                                                height: 10,
                                                child: AspectRatio(
                                                  aspectRatio: 1 / 0.9,
                                                  child: Image(
                                                    image: AssetImage(
                                                        "assets/findStay/sleep.png"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]),
                                  ),
                                  SizedBox(height: 12),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 2.0, left: 10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              "assets/findStay/dot.png"),
                                          fit: BoxFit.fill,
                                          height: 4.5,
                                        ),
                                        SizedBox(width: 6.0),
                                        Text(
                                          "FREE cancellation",
                                          style: TextStyle(
                                            color: Color(0xFF4C3C73),
                                            fontSize: 12.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 2.0, left: 10.0),
                                    child: Row(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              "assets/findStay/dot.png"),
                                          fit: BoxFit.fill,
                                          height: 4.5,
                                        ),
                                        SizedBox(width: 6.0),
                                        Text(
                                          "PAY at the property",
                                          style: TextStyle(
                                            color: Color(0xFF4C3C73),
                                            fontSize: 12.0,
                                            fontFamily: 'SF Pro Display',
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0344),
                                  //
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      // alignment: Alignment.centerRight,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFB4B4B4),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      width: MediaQuery.of(context).size.width,
                                      // height: MediaQuery.of(context).size.height*0.1,
                                      child: new Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          InkWell(
                                            onTap: () {
                                              minus();
                                            },
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.32,
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/findStay/minus.png"),
                                                fit: BoxFit.fill,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.055,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Color(0xFFB4B4B4),
                                            alignment: Alignment.center,
                                            child: new Text(
                                              '$_n',
                                              style: TextStyle(
                                                color: Color(0xFF3B3B3B),
                                                fontSize: 18.0,
                                                fontFamily: 'SF Pro Text',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              add();
                                            },
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.32,
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/findStay/plus.png"),
                                                fit: BoxFit.fill,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.055,
                                              ),
                                            ),
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
              "Nothing here",
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
