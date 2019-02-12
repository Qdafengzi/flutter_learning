import 'package:flutter/material.dart';
import 'package:splashscreen/MyHomePage.dart';

class SplashScreenDemo extends StatefulWidget {
  @override
  _SplashScreenDemoState createState() => _SplashScreenDemoState();
}

class _SplashScreenDemoState extends State<SplashScreenDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _animatedController;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _animatedController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animatedController);
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => MyHomePage()),
            //返回boolean
            (route) => route == null);
      }
    });
    _animatedController.forward(); //播放动画
  }

  @override
  void dispose() {
    _animatedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
          'http://pic33.photophoto.cn/20141111/0005018398216909_b.jpg',
          scale: 2.0,
          fit: BoxFit.cover),
    );
  }
}
