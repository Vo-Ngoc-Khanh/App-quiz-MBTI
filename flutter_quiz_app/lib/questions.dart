import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/result.dart';

import 'home.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int choose = 0;
  Widget radioButton(String question, String answer1, String answer2) {
    return Column(
      children: [
        Text(
          question,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        RadioListTile(
            title: Text(
              answer1,
              style: const TextStyle(fontSize: 18),
            ),
            value: 1,
            groupValue: choose,
            onChanged: (value) {
              setState(() {
                choose = int.parse(value.toString());
              });
            }),
        const SizedBox(
          height: 10,
        ),
        RadioListTile(
            title: Text(
              answer2,
              style: const TextStyle(fontSize: 18),
            ),
            value: 2,
            groupValue: choose,
            onChanged: (value) {
              setState(() {
                choose = int.parse(value.toString());
              });
            }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Trắc nghiệm tính cách'),
          leading: IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                  (Route<dynamic> route) => false,
                );
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: radioButton(
                    '1. Trong một buổi tiệc, bạn sẽ :',
                    'Nói chuyện với tất cả mọi người, kể cả người lạ',
                    'Nói chuyện với những người bạn quen'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 110,
                ),
                ElevatedButton(onPressed: () {}, child: const Text('QUAY LẠI')),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResultPage()));
                    },
                    child: const Text('KẾT QUẢ')),
              ],
            )
          ],
        ));
  }
}
