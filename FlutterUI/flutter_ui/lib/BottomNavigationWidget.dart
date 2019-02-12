import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/Home.dart';
import 'package:flutter_ui/pages/Email.dart';
import 'package:flutter_ui/pages/Page.dart';
import 'package:flutter_ui/pages/Airplay.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;
  int _currentindex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list..add(Home())..add(Email())..add(Page())..add(Airplay());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _BottomNavigationColor),
              title: Text(
                'Home',
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.email, color: _BottomNavigationColor),
              title: Text(
                'Email',
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.pages, color: _BottomNavigationColor),
              title: Text(
                'Pages',
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplay, color: _BottomNavigationColor),
              title: Text(
                'AirPlay',
                style: TextStyle(color: _BottomNavigationColor),
              ))
        ],
        currentIndex: _currentindex,
        onTap: (int index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
