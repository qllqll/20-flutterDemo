import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart' as prefix0;

class FrostedGlassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: prefix0.Image.network(
                'http://img5.mtime.cn/CMS/News/2019/09/10/164541.31203558_620X620.jpg'),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500,
                    height: 700,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text('哈哈哈',
                          style: Theme.of(context).textTheme.display3),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
