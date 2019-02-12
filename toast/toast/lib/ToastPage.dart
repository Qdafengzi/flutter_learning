import 'package:flutter/material.dart';

class ToastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tool tips demo'),
      ),
      body: Center(
        child: Tooltip(
          message: '不要碰我,长按的时候提示',
          child: Image.network(
              'http://pic33.photophoto.cn/20141111/0005018398216909_b.jpg'),
        ),
      ),
    );
  }
}
