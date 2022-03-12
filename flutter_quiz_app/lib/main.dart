import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/views/splash.dart';

void main() {
  runApp(const QuizMBTI());
}

class QuizMBTI extends StatelessWidget {
  const QuizMBTI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
