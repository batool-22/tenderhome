import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Foodfam_detail.dart';

class GameTopChartsTabs extends StatefulWidget {
  final Widget child;

  GameTopChartsTabs({Key key, this.child}) : super(key: key);

  _GameTopChartsTabsState createState() => _GameTopChartsTabsState();
}
class _GameTopChartsTabsState extends State<GameTopChartsTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width  - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('need T-shirt', '\1 Hour',
                      false, false),
                  _buildCard('need a jacket', '\30 minutes', 
                      false, false,),
                  _buildCard('need a shose', '\4 hours',
                       false, true,),
                  _buildCard('need a pjama', '\Now',
                      false, false,)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, bool added,
      bool isFavorite,) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FoodfamDetail(
                    cookiename: name,
                    cookieprice:price
                  )));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? Icon(Icons.favorite, color: Color(0xffEA8698))
                                : Icon(Icons.favorite_border,
                                    color: Color(0xffEA8698))
                          ])),
                  
                   SizedBox(height: 7.0),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 18.0)),
                  Text(price,
                      style: TextStyle(
                          color: Color(0xffEA8698),
                          fontFamily: 'Varela',
                          fontSize: 13.0)),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 2.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (!added) ...[
                              Icon(Icons.keyboard_arrow_right,
                                  color: Color(0xffEA8698), size: 18.0),
                              Text('See Details',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Color(0xffEA8698),
                                      fontSize: 16.0))
                            ],
                            
                          ]))
                ]))));
  }
}
