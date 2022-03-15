import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/views/splash.dart';

void main() {
  runApp(const QuizMBTI());
}

class QuizMBTI extends StatelessWidget {
  const QuizMBTI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(brightness: Brightness.light),
    );
  }
}
