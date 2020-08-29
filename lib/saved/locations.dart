import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Locations extends StatefulWidget {
  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
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
  List<String> titles = ['Sun', 'Moon', 'Star', "q", "q"];
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
    return nameArray.isNotEmpty
        ? AnimationLimiter(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
                itemCount: nameArray.length,
                itemBuilder: (context, index) {
                  // final item = titles[index];
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: new Container(
                      height: MediaQuery.of(context).size.height * 0.15,
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
                                                "assets/saved/${imgArray[index]}"),
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
                                              nameArray[index],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18.0,
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
                              Positioned(
                                top: MediaQuery.of(context).size.height * 0.008,
                                right:
                                    -MediaQuery.of(context).size.height * 0.04,
                                //alignment: Alignment.centerRight,
                                child: Container(
                                  //color: Colors.red,
                                  alignment: Alignment.centerRight,
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  child: RaisedButton(
                                    child: Image(
                                      image:
                                          AssetImage("assets/saved/cross.png"),
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
              "No locations available",
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
