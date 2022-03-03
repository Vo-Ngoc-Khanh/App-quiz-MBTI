import 'package:flutter/material.dart';
import 'package:flutter_quiz_mbti/home.dart';

void main() {
  runApp(const QuizMBTI());
}

class QuizMBTI extends StatelessWidget {
  const QuizMBTI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
