import 'package:flutter/material.dart';
import 'home_page.dart';
class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>  with SingleTickerProviderStateMixin {
AnimationController _controller;
Animation _animaation;

@override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 3000),vsync: this);
    _animaation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  
    _animaation.addStatusListener((status){
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => MyHomePage()), (route) => route == null);
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
        super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animaation,
      child:Image.network(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546851657199&di=fdd278c2029f7826790191d59279dbbe&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0112cb554438090000019ae93094f1.jpg%401280w_1l_2o_100sh.jpg',
       scale: 2.0,
       fit: BoxFit.cover,
       ),
    );
  }
}