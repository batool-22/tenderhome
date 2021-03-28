import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Food_detail.dart';
class HomeForYouTabs extends StatefulWidget {
  final Widget child;

  HomeForYouTabs({Key key, this.child}) : super(key: key);

  _HomeForYouTabsState createState() => _HomeForYouTabsState();
}
class _HomeForYouTabsState extends State<HomeForYouTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Cookie mint', '\1 Hour', 'assets/cookies.jpg',
                      false, false, context),
                  _buildCard('Pasta', '\30 minutes', 'assets/pasta.jpg',
                      false, false, context),
                  _buildCard('Rise', '\4 hours',
                      'assets/rise.jpg', false, true, context),
                  _buildCard('Pastrise', '\Now', 'assets/pastries.jpg',
                      false, false, context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FoodDetail(
                    assetPath: imgPath,
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
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? Icon(Icons.favorite, color: Color(0xffEA8698))
                                : Icon(Icons.favorite_border,
                                    color: Color(0xffEA8698))
                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),
                  
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Text(price,
                      style: TextStyle(
                          color: Color(0xffEA8698),
                          fontFamily: 'Varela',
                          fontSize: 10.0)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
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
                                      fontSize: 12.0))
                            ],
                            
                          ]))
                ]))));
  }
}
