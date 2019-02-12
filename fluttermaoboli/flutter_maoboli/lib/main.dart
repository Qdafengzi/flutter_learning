import 'package:flutter/material.dart';
import 'package:flutter_maoboli/keep_alive_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
//    return MaterialApp(
//        title: 'Flutter Demo of Mao boli',
//        theme: ThemeData(primarySwatch: Colors.blue),
//        home: Scaffold(
//          body: FrostedClassDemo(),
//        ));
    return MaterialApp(
      title: 'Flutter Keep Alive ',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: KeepAliveDemo(),
    );
  }
}

class KeepAliveDemo extends StatefulWidget {
  @override
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

class _KeepAliveDemoState extends State<KeepAliveDemo>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keep Alive Demo'),
        bottom: TabBar(controller: _controller, tabs: [
          Tab(icon: Icon(Icons.directions_car)),
          Tab(icon: Icon(Icons.directions_bike)),
          Tab(icon: Icon(Icons.directions_transit),)
        ]),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),

//          Text('1111'),
//          Text('2222'),
//          Text('3333'),
        ],
      ),
    );
  }
}
