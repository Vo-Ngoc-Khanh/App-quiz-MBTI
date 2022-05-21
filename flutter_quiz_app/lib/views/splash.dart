import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/views/quiz%20john%20holland/guide.dart';
import 'package:fluttter_quiz_app/widgets/colors.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const GuideJohnHolland()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        color: general,
        child: Container(
          color: Colors.white,
          height: 300,
          width: 300,
          child: 
            Image.asset('assets/images/splash.png',
              height: 300,
              width: 300,
            ),
        ),
      ),
    );
  }
}
