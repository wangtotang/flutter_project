import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/email_page.dart';
import 'pages/pages_page.dart';
import 'pages/airplay_page.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;

  List<Widget> pages = List();

  int _currentIndex = 0;

  @override
  void initState() {
    pages
      ..add(HomePage())
      ..add(EmailPage())
      ..add(AirPlayPage())
      ..add(PagesPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _BottomNavigationColor,
              ),
              title: Text("Home",
                  style: TextStyle(color: _BottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _BottomNavigationColor,
              ),
              title: Text("Email",
                  style: TextStyle(color: _BottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _BottomNavigationColor,
              ),
              title: Text("Pages",
                  style: TextStyle(color: _BottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _BottomNavigationColor,
              ),
              title: Text("Ariplay",
                  style: TextStyle(color: _BottomNavigationColor))),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
