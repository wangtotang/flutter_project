import 'package:flutter/material.dart';
import 'pages/my_view.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> pages = List();

  int _index = 0;

  @override
  void initState() {
    pages..add(MyView("Home"))..add(MyView("AirPlay"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        tooltip: "new page",
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return MyView("New Page");
          }));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: pages[_index],
      bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlue,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _index = 0;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.airplay),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _index = 1;
                  });
                },
              ),
            ],
          )),
    );
  }
}
