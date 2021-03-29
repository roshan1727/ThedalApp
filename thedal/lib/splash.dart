import 'dart:async';

import 'package:flutter/material.dart';
import 'package:thedal/lang.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Language())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("THEDAL")),
    );
  }
}
