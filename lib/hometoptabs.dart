import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'homeforyoutabs.dart';
import 'hometopchartstabs.dart';
import 'Homebook.dart';
import 'Food_detail.dart';

class HomeTopTabs extends StatefulWidget {

  HomeTopTabs(this.colorVal);
  int colorVal;

  _HomeTopTabsState createState() => _HomeTopTabsState();
}

class _HomeTopTabsState extends State<HomeTopTabs> with SingleTickerProviderStateMixin{
TabController _tabController;

@override
     void initState() {
       super.initState();
      _tabController = new TabController(vsync: this, length: 4);
      _tabController.addListener(_handleTabSelection);
     }
     void _handleTabSelection() {
        setState(() {
          widget.colorVal=0xffff5722;
         });
     }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:4,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorWeight: 4.0,
            indicatorColor:Color(0xffEA8698),
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                child:Text('Food',style: TextStyle( color: _tabController.index == 0
                          ?  Color(0xffEA8698)
                          : Colors.grey,
                          fontFamily: 'Varela',
                          fontSize: 19.0,
                )),
              ),
              Tab(
                child: Text('Clothes',style: TextStyle( color: _tabController.index == 1
                          ?  Color( 0xffEA8698)
                          : Colors.grey,
                          fontFamily: 'Varela',
                          fontSize: 19.0,
                )),
              ),
              Tab(
                child: Text('Books',style: TextStyle( color: _tabController.index == 2
                          ?  Color(0xffEA8698)
                          : Colors.grey,
                          fontFamily: 'Varela',
                          fontSize: 19.0,
                )),
              ),
              Tab(
                child: Text('Others',style: TextStyle( color: _tabController.index == 3
                          ?  Color(0xffEA8698)
                          : Colors.grey,
                          fontFamily: 'Varela',
                          fontSize: 19.0,
                )),
              ),
              
            ],
          ),
          
        ),
         body: TabBarView(
           controller: _tabController,
            children: <Widget>[
              HomeForYouTabs(),
              HomeTopChartsTabs(),
              Homebook(),
              Container(
              height: 200.0,
              child: Center(child: Text('Family')),
            ),
            
            ],
         ),
      ),
    );
  }
}

