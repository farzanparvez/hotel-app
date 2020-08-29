import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<String> nameArray = [
    "Team HotelsHippo",
    "Review Your Stay",
    "Team HotelsHippo",
    "Review Your Stay",
    "Team HotelsHippo",
    "Review Your Stay",
    "Team HotelsHippo",
    "Review Your Stay",
    "Team HotelsHippo",
    "Review Your Stay",
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
  List<String> notifyImgArr = [
    "blueDot.png",
    "blueDot.png",
    "blueDot.png",
    "blueDot.png",
    "blueDot.png",
    "blueDot.png",
    "blueDot.png",
    "blueDot.png",
    "blueDot.png",
    "blueDot.png",
  ];
  var isShow = true;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        // statusBarColor is used to set Status bar color in Android devices.
        statusBarColor: Colors.white,

        // To make Status bar icons color white in Android devices.
        statusBarIconBrightness: Brightness.dark,

        // statusBarBrightness is used to set Status bar icon color in iOS.
        statusBarBrightness: Brightness.dark,
        // Here light means dark color Status bar icons.
        
      ),
    );

    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Notifications",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
              fontFamily: 'SF Pro Display',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          brightness: Brightness.light,
        //iconTheme: IconThemeData(color: Colors.black),
        ),
        body: mainBody());
  }

  Widget mainBody() {
    return Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height * 0.07,
        color: Color(0xFFF2F2F2),
        child: Stack(children: <Widget>[
          Align(
              alignment: Alignment.centerLeft,
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      this.isShow = true;
                    });
                  },
                  child: Text(
                    "Unread",
                    style: TextStyle(
                      color: Color(0xFF2E2E2E),
                      fontSize: 16.0,
                      fontFamily: 'SF Pro Text',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ))),
          Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      this.isShow = false;
                    });
                  },
                  child: Text(
                    "Mark all as read",
                    style: TextStyle(
                      color: Color(0xFF5C4E8A),
                      fontSize: 14.0,
                      fontFamily: 'SF Pro Text',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ))),
        ]),
      ),
      Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.07,
        ),
        child: _myListView(),
      )
    ]);
  }

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
                    child: Slidable(
                      actionPane: SlidableDrawerActionPane(),
                      actionExtentRatio: 0.25,
                      child: new Container(
                        // padding: EdgeInsets.only(top:5),
                        height: MediaQuery.of(context).size.height * 0.13,
                        // width: MediaQuery.of(context).size.width * 0.8,
                        child: SlideAnimation(
                          verticalOffset: 200,
                          child: FadeInAnimation(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              margin: EdgeInsets.only(
                                  // right: MediaQuery.of(context).size.width * 0.05,
                                  // left: MediaQuery.of(context).size.width * 0.05,
                                  bottom: 0,
                                  top: 1),
                              child: Stack(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            // color: Colors.red,
                                            margin: EdgeInsets.only(top: 6.0),
                                            padding: EdgeInsets.only(left: 7.0),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.03,
                                            child: AspectRatio(
                                              aspectRatio: 1 / 1,
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/saved/notify.png"),
                                                fit: BoxFit.fill,
                                                // height: 25,
                                              ),
                                            )),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(
                                              top: 3.0, left: 11.0),
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
                                                  fontSize: 17.0,
                                                  fontFamily: 'SF Pro Display',
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w500,
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
                                                  fontSize: 12.0,
                                                  fontFamily: 'SF Pro Display',
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                textAlign: TextAlign.left,
                                                maxLines: 2,
                                              ),
                                              SizedBox(
                                                height: 7.0,
                                              ),
                                              Text(
                                                "1 hours ago",
                                                style: TextStyle(
                                                  color: Color(0xFF9B9B9B),
                                                  fontSize: 11.0,
                                                  fontFamily: 'SF Pro Display',
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(0),

                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.11,
                                        //height: MediaQuery.of(context).size.height * 0.025,
                                        child: RaisedButton(
                                          child: Image(
                                            image: AssetImage(
                                                "assets/saved/ChevronRight.png"),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          //splashColor: Colors.blueGrey,
                                          onPressed: () {
                                            // Perform some action
                                            setState(() {
                                              nameArray.removeAt(index);
                                              locationArray.removeAt(index);
                                              notifyImgArr.removeAt(index);
                                            });
                                            // nameArray.remove(index);
                                            print("ButtonClicked");
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Visibility(
                                  maintainSize: true,
                                  maintainAnimation: true,
                                  maintainState: true,
                                  visible: this.isShow == false ? false : true,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/saved/${notifyImgArr[index]}"),
                                      fit: BoxFit.cover,
                                      height: 10,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ),
                      actions: <Widget>[
                        // IconSlideAction(
                        //   caption: 'Archive',
                        //   color: Colors.blue,
                        //   icon: Icons.archive,
                        //   // onTap: () => _showSnackBar('Archive'),
                        // ),
                        IconSlideAction(
                          caption: 'Read',
                          color: Colors.black38,
                          icon: Icons.message,
                          onTap: () {
                            //  setState(() {
                            //   this.isShow = false;
                            // });
                          },
                        ),
                      ],
                      secondaryActions: <Widget>[
                        // IconSlideAction(
                        //   caption: 'More',
                        //   color: Colors.black45,
                        //   icon: Icons.more_horiz,
                        //   // onTap: () => _showSnackBar('More'),
                        // ),
                        IconSlideAction(
                          caption: 'Delete',
                          color: Colors.red,
                          icon: Icons.delete,
                          onTap: () {
                            setState(() {
                              this.nameArray.removeAt(index);
                            });
                          },
                        ),
                      ],
                    ),
                  );
                }),
          )
        : Container(
            child: Center(
                child: Text(
              "Nothing Here",
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
