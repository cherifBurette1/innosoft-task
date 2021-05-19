import 'package:flutter/material.dart';
import 'package:task/newslist.dart';
import 'images.dart';
import 'videos.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            flexibleSpace: Image(
              image: AssetImage('assets/pics/assets/Group540.png'),
              fit: BoxFit.cover,
            ),
            bottom: TabBar(
              isScrollable: false,
              tabs: tabs,
            ),
            backgroundColor: Color.fromARGB(255, 15, 23, 55),
          ),
          body: TabBarView(
            children: myWidget.map((Widget data) {
              return data;
            }).toList(),
          ),
        ));
  }

  final List<Tab> tabs = <Tab>[
    Tab(
      child: Text('News'),
      //  icon: Icon(Icons.all_out)
    ),
    Tab(
      child: Text('Images'),
      //  icon: Icon(Icons.photo)
    ),
    Tab(
      child: Text('Videos'),
      //  icon: Icon(Icons.video_call)
    ),
  ];

  final List<Widget> myWidget = <Widget>[
    Newslist(),
    Images(),
    Videos(),
  ];
}
