import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'hometoptabs.dart';
import 'gamestoptabs.dart';

class HomePage extends StatefulWidget {
  final Widget child;
  HomePage({Key key, this.child}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

Color PrimaryColor =  Color(0xff109618);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.home, color: Color(0xFF545D68)),
          onPressed: () {},
        ),
        title: Text('Home',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
            bottom: TabBar(
              labelColor: Color(0xffEA8698),
              unselectedLabelColor: Color(0xFFCDCDCD),
                tabs: [
                Tab(
                  child: Text('Volunteer Posts',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 18.0,
                        color: Color(0xFF545D68),
                      )),
                ),
                  Tab(
                  child: Text('Family Posts',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 18.0,
                        color: Color(0xFF545D68),
                      )),
                ),  
                ],
            ),
                
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
          body: TabBarView(
            children: <Widget>[
              HomeTopTabs(0xffff5722),//ff5722
              GamesTopTabs(0xff3f51b5),//3f51b5
              
            ],
          )),
    );
  }
}

Widget _GooglePlayAppBar() {
  return Container(
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: IconButton(
            icon: Icon(FontAwesomeIcons.bars),
          ),
        ),
        Container(
          child: Text(
            'Google Play',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Container(
          child: IconButton(
              icon: Icon(
                FontAwesomeIcons.microphone,
                color: Colors.blueGrey,
              ),
              onPressed: null),
        ),
      ],
    ),
  );
}

