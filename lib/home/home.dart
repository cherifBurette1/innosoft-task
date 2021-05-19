import 'package:flutter/material.dart';
import 'package:task/homebody.dart';
import '../news.dart';
import '../homebody.dart';
import '../more.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:task/tor.dart';

int _currentNav = 4;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: checkbody(),
      bottomNavigationBar: navbar(),
    );
  }

  navbar() {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 15, 23, 55),
      currentIndex: _currentNav,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: new Image.asset("assets/pics/assets/Glyph5.png", scale: 1.5),
          label: translator.translate('more'),
        ),
        BottomNavigationBarItem(
          icon: new Image.asset("assets/pics/assets/Glyph4.png", scale: 1.5),
          label: translator.translate('stats'),
        ),
        BottomNavigationBarItem(
          icon: new Image.asset("assets/pics/assets/Glyph3.png", scale: 1.5),
          label: translator.translate('newsfeed'),
        ),
        BottomNavigationBarItem(
          icon: new Image.asset("assets/pics/assets/Glyph2.png", scale: 1.5),
          label: translator.translate('tournamentsch'),
        ),
        BottomNavigationBarItem(
          icon: new Image.asset(
            "assets/pics/assets/Glyph.png",
            color: Colors.grey,
            scale: 1.0,
          ),
          label: translator.translate('main'),
        ),
      ],
      unselectedItemColor: Colors.grey[500],
      selectedItemColor: Colors.white,
      onTap: (index) {
        setState(() {
          _currentNav = index;
        });
      },
    );
  }

  checkbody() {
    switch (_currentNav) {
      case 4:
        return HomeBod();
        break;
      case 3:
        return Tor();
        break;
      case 2:
        return News();
        break;
      case 0:
        return More();
        break;
    }
  }
}
