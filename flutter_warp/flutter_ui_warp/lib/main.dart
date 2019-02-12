import 'package:flutter/material.dart';
import 'package:flutter_ui_warp/WarpDemo.dart';

void main()=>runApp(
  MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warp App',
      theme: ThemeData.light(),
      home: WarpDemo(),
    );
  }
}



