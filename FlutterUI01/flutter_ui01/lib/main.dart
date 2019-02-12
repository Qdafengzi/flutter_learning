import 'package:flutter/material.dart';
import 'package:flutter_ui01/bottom_aooBar_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: BottomAppBarDemo(),
    );
  }
}
