import 'package:flutter/material.dart';

class ExpansionDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion tile demo'),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text('Expanson tile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title: Text('List Tile'),
              subtitle: Text('Sub Tile'),
            )
          ],
        ),
      ),
    );
  }
}
