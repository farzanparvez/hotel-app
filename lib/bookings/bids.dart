import 'package:flutter/material.dart';

class Bids extends StatefulWidget {
  @override
  _BidsState createState() => _BidsState();
}

class _BidsState extends State<Bids> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * 0.25),
              AspectRatio(
                  aspectRatio: 1 / 0.32,
                  child: Image(image: AssetImage("assets/booking/panel.png"))),
              SizedBox(height: 15),
              Text(
                'Nothing Here',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontFamily: 'SF Pro Display',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.07,
               
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => FindAStay()),
                      // );
                    },
                    child: Text(
                      'Request Your First Bid',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontFamily: 'SF Pro Display',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0))),
              ),
            ]),
      ),
    );
  }
}
