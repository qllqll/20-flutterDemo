import 'package:flutter/material.dart';
import 'frosted_glass_emo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: FrostedGlassDemo(),
      ),
    );
  }
}
