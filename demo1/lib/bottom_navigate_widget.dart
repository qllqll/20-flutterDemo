import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'email_screen.dart';
import 'pages_screen.dart';
import 'airplay_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _selectColor = const Color(0xff1296db),
      _normalColor = const Color(0xff515151);
  int _currentIndex = 0;
  List<Widget> list = List();

  var appBarTitles = ['首页', '信息', '其他', '我的'];
  Text getTabTitle(int currentIndex) {
    if (currentIndex == _currentIndex) {
      return Text(
        appBarTitles[currentIndex],
        style: TextStyle(fontSize: 14.0, color: _selectColor),
      );
    } else {
      return Text(
        appBarTitles[currentIndex],
        style: TextStyle(fontSize: 14.0, color: _normalColor),
      );
    }
  }

  var appTabImage = [Icons.home, Icons.email, Icons.pages, Icons.airplay];
  Icon getTabImage(int currentIndex) {
    var color = currentIndex == _currentIndex ? _selectColor : _normalColor;
    return Icon(
      appTabImage[currentIndex],
      color: color,
    );
  }

  @override
  void initState() {
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirplayScreen());
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: getTabImage(0), title: getTabTitle(0)),
            BottomNavigationBarItem(
                icon: getTabImage(1), title: getTabTitle(1)),
            BottomNavigationBarItem(
                icon: getTabImage(2), title: getTabTitle(2)),
            BottomNavigationBarItem(
                icon: getTabImage(3), title: getTabTitle(3)),
          ],
          currentIndex: _currentIndex,
          iconSize: 24.0,
          // fixedColor: Colors.green,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed),
    );
  }
}

class AirPlayScreen {}
