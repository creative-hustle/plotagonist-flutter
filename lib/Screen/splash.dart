import 'dart:async';
import 'package:flutter/material.dart';
import 'package:plotagonist/Screen/login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Image(
            height: 150.h,
            width: 150.w,
            image: AssetImage('assets/images/splash_logo.png'),
          ),
        ),
      ),
    );
  }
}
