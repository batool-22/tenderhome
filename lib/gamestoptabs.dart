import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gametopchartstabs.dart';
import 'Familyfood.dart';
import 'Foodfam_detail.dart';


class GamesTopTabs extends StatefulWidget {
  int colorVal;
  GamesTopTabs(this.colorVal);
  _GamesTopTabsState createState() => _GamesTopTabsState();
}

class _GamesTopTabsState extends State<GamesTopTabs> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
     void initState() {
       super.initState();
      _tabController = new TabController(vsync: this, length: 4);
      _tabController.addListener(_handleTabSelection);
     }
     void _handleTabSelection() {
        setState(() {
          widget.colorVal=0xff3f51b5;
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
                          ?  Color( 0xffEA8698)
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
                          ?  Color( 0xffEA8698)
                          : Colors.grey,
                          fontFamily: 'Varela',
                          fontSize: 19.0,
                )),
              ),
              Tab(
                child: Text('Others',style: TextStyle( color: _tabController.index == 3
                          ?  Color( 0xffEA8698)
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
              Familyfood(),
              GameTopChartsTabs(),
               Container(
              height: 200.0,
              child: Center(child: Text('Books')),
            ),
             Container(
              height: 200.0,
              child: Center(child: Text('Others')),
            ),
             
            ],
          ),
      ),
    );
  }
}
