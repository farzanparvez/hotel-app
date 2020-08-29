import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import './select_stay_date.dart';

class SearchStay extends StatefulWidget {
  @override
  _SearchStayState createState() => _SearchStayState();
}

class _SearchStayState extends State<SearchStay> {
  TextEditingController editingController = TextEditingController();

  List<String> nameArray1 = [
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
    "search1.png",
    "search2.png",
    "search1.png",
    "search2.png",
    "search1.png",
    "search2.png",
    "search1.png",
    "search2.png",
    "search1.png",
    "search2.png",
  ];

  var duplicateItems = List<String>();
  
  var items = List<String>();

  @override
  void initState() {
    duplicateItems.addAll(nameArray1);
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }

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
          "",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
            fontFamily: 'SF Pro Display',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            textColor: Color(0xFF61498C),
            onPressed: () {
              print("object");
            },
            child: Text(
              "Clear",
              style: TextStyle(
                color: Color(0xFF61498C),
                fontSize: 14.0,
                fontFamily: 'SF Pro Text',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            ),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                autofocus: true,
                decoration: InputDecoration(
                    labelText: "",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 75,
                    margin: EdgeInsets.only(
                        right: mediaQuery.width * 0.055,
                        left: mediaQuery.width * 0.055,
                        top: 5.0,
                        bottom: 5.0),
                    child: _myList())),
          ],
        ),
      ),
    ));
  }

  Widget _myList() {
    return nameArray1.isNotEmpty
        ? AnimationLimiter(
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  // final item = titles[index];
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: InkWell(
                      onTap: (){
                         Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      fullscreenDialog: true,
                                      builder: (context) => SelectStayDates()),
                                );
                      },
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
                                  right: 4.0, left: 4.0, bottom: 3.0, top: 2.0),
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
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                              child: Image(
                                                image: AssetImage(
                                                    "assets/findStay/${imgArray1[index]}"),
                                                fit: BoxFit.fill,
                                              ),
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
