import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Properties extends StatefulWidget {
  @override
  _PropertiesState createState() => _PropertiesState();
}

class _PropertiesState extends State<Properties> {
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
    "OrchidVilla.png",
    "jetwing.png",
    "OrchidVilla.png",
    "jetwing.png",
    "OrchidVilla.png",
    "jetwing.png",
    "OrchidVilla.png",
    "jetwing.png",
    "OrchidVilla.png",
    "jetwing.png",
  ];
  List<String> titles = ['Sun', 'Moon', 'Star', "q", "q"];
  var rating = 4.0;
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
    return _myListView();
  }

  // the Expanded widget lets the columns share the space

  Widget _myListView() {
    return this.nameArray.isNotEmpty
        ? AnimationLimiter(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
                itemCount: nameArray.length,
                itemBuilder: (context, index) {
                  var nameArr = nameArray[index];

                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: new Container(
                      height: MediaQuery.of(context).size.height * 0.256,
                      // width: MediaQuery.of(context).size.width * 0.8,
                      child: SlideAnimation(
                        verticalOffset: 200,
                        child: FadeInAnimation(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            margin: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * 0.05,
                                left: MediaQuery.of(context).size.width * 0.05,
                                bottom: 0,
                                top: 10),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Column(
                                children: <Widget>[
                                  Stack(children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.only(left: 0.0),
                                        //height: MediaQuery.of(context).size.height * 0.05,
                                        child: AspectRatio(
                                          aspectRatio: 1 / 0.3,
                                          child: Image(
                                            image: AssetImage(
                                                "assets/saved/${imgArray[index]}"),
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                    Positioned(
                                      top: MediaQuery.of(context).size.height *
                                          0.008,
                                      right:
                                          -MediaQuery.of(context).size.height *
                                              0.04,
                                      //alignment: Alignment.centerRight,
                                      child: Container(
                                        //color: Colors.red,
                                        alignment: Alignment.centerRight,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                        child: RaisedButton(
                                          child: Image(
                                            image: AssetImage(
                                                "assets/saved/cross.png"),
                                            fit: BoxFit.fill,
                                          ),
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          //splashColor: Colors.blueGrey,
                                          onPressed: () {
                                            // Perform some action
                                            setState(() {
                                              nameArray.removeAt(index);
                                              locationArray.removeAt(index);
                                              imgArray.removeAt(index);
                                            });
                                            // nameArray.remove(index);
                                            print("ButtonClicked");
                                          },
                                        ),
                                      ),
                                    ),
                                  ]),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      padding:
                                          EdgeInsets.only(top: 3.0, left: 7.0),
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
                                              fontSize: 20.0,
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
                                              fontSize: 12.0,
                                              fontFamily: 'SF Pro Display',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w500,
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
                                              size: 12.0,
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
}
