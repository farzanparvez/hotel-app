import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    //dynamic Layout
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Account",
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
              "Done",
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
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              margin: EdgeInsets.only(right: 0, left: 0, bottom: 0, top: 15),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 5.0),
                  Stack(children: <Widget>[
                    new Container(
                        width: mediaQuery.height * 0.17,
                        height: mediaQuery.height * 0.17,
                        margin: EdgeInsets.only(bottom: 0.0),
                        decoration: new BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.transparent,
                                  blurRadius: 15.0,
                                  offset: Offset(3.0, 0.0))
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/menu/profile.png"),
                            ))),
                  ]),
                  FlatButton(
                    textColor: Color(0xFF61498C),
                    onPressed: () {
                      print("object");
                    },
                    child: Text(
                      "Change Profile Image",
                      style: TextStyle(
                        color: Color(0xFF61498C),
                        fontSize: 14.0,
                        fontFamily: 'SF Pro Text',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    //   shape: CircleBorder(
                    //       side: BorderSide(color: Colors.transparent)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              margin: EdgeInsets.only(right: 0, left: 0, bottom: 0, top: 10),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          //SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                          Text(
                            "First name",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 17.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          //SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: TextFormField(
                              initialValue: "Kate",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.9),
                                fontSize: 17.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(labelText: ''),
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          //SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                          Text(
                            "Last name",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 17.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          //SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: TextFormField(
                              initialValue: "Simons",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.9),
                                fontSize: 17.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(labelText: ''),
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          //SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                          Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 17.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          //SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: TextFormField(
                              initialValue: "example@gmail.com",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.9),
                                fontSize: 17.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(labelText: ''),
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          //SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                          Text(
                            "Phone",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 17.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          //SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: TextFormField(
                              initialValue: "+94123456789",
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.9),
                                fontSize: 17.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(labelText: ''),
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          //SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                          Text(
                            "Gender",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 17.0,
                              fontFamily: 'SF Pro Display',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          //SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.06,
                            child: Text(
                              "Female",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.9),
                                fontSize: 17.0,
                                fontFamily: 'SF Pro Display',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(bottom:MediaQuery.of(context).size.width * 0.1),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                margin: EdgeInsets.only(right: 0, left: 0, bottom: 0, top: 10),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    "Log out",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontFamily: 'SF Pro Display',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )),
          )
        ],
      )),
    );
  }
}
