import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter1/screens/login.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MyHomePage()));
    });
  }
}
