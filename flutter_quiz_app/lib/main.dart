import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/result.dart';

import 'guide.dart';


void main() {
  runApp(const QuizMBTI());
}

class QuizMBTI extends StatelessWidget {
  const QuizMBTI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GuidePage(), //SplashScreen(),
    );
  }
}


//splash screen do last
/*class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.asset('./loading.json', height: 200, width: 200),
        ]),
      ),
    );
  }
}*/
