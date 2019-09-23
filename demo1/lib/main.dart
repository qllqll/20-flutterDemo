import 'package:flutter/material.dart';
import 'bottom_navigate_widget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Demo 1',
        theme: ThemeData.light(),
        home: BottomNavigationWidget());
  }
}
