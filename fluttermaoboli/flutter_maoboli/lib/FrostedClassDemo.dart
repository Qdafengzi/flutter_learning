import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedClassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //约束性盒子组件
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network(
                'http://img3.redocn.com/tupian/20150408/shucaihelvyezhuangshideshiliangbiankuang_4036044.jpg'),
          ),
          Center(
            //可裁切的巨型
            child: ClipRect(
              //背景过滤器
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    //盒子修饰器
                    child: Center(
                      child: Text(
                        '毛玻璃',
                        style: Theme.of(context).textTheme.display3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
