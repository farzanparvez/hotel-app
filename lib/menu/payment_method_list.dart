import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import './add_payment_method.dart';

class PaymentMethodList extends StatefulWidget {
  @override
  _PaymentMethodListState createState() => _PaymentMethodListState();
}

class _PaymentMethodListState extends State<PaymentMethodList> {
  @override
  Widget build(BuildContext context) {
    //dynamic Layout
    var mediaQuery = MediaQuery.of(context).size;
    List<String> nameArray1 = [
      "****12345",
      "****12345",
    ];
    List<String> imgArray1 = [
      "master-card.png",
      "visa.png",
    ];
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Payment Methods",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
            fontFamily: 'SF Pro Display',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(slivers: <Widget>[
        SliverStickyHeader(
          header: Container(
            // height: mediaQuery.height * 0.027,
            color: Color(0xFF2F2F2F2),
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            //alignment: Alignment.centerLeft,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Payment Method",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 17.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Get notifications about confirmations, modifications and cancellations",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 13.0,
                        fontFamily: 'SF Pro Display',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ]),
          ),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, i) => Container(
                height: MediaQuery.of(context).size.height * 0.078,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  margin: EdgeInsets.only(bottom: 1.0),
                  child: ListTile(
                    dense: true,
                    onTap: () {
                      print("account");
                    },
                    title: Row(children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(left: 0.0),
                          //height: MediaQuery.of(context).size.height * 0.05,
                          child: imgArray1[i] == "master-card.png"
                              ? Image(
                                  image:
                                      AssetImage("assets/menu/master-card.png"),
                                  fit: BoxFit.fill,
                                  height: MediaQuery.of(context).size.height *
                                      0.035,
                                )
                              : Image(
                                  image: AssetImage("assets/menu/visa.png"),
                                  fit: BoxFit.fill,
                                  height: MediaQuery.of(context).size.height *
                                      0.035,
                                )),
                      SizedBox(width: 15),
                      Text(
                        '${nameArray1[i]}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: 'SF Pro Display',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
                    trailing: Image(
                      image: AssetImage("assets/menu/ChevronRight.png"),
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height * 0.023,
                    ),
                  ),
                ),
              ),
              childCount: 2,
            ),
          ),
        ),
        SliverStickyHeader(
            header: Container(
          width: double.infinity,
          alignment: Alignment.centerLeft,
          color: Colors.white,
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                    fullscreenDialog: false,
                    builder: (context) => AddPaymentMethod()),
              );
              print("add payment method");
            },
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Add payment method",
                style: TextStyle(
                  color: Color(0xFF61498C),
                  fontSize: 17.0,
                  fontFamily: 'SF Pro Text',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          // shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
        )),
        SliverStickyHeader(
          header: Container(
            height: mediaQuery.height * 0.06,
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              '',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ]),
    ));
  }
}
