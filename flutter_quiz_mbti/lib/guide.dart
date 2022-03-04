import 'package:flutter/material.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hướng dẫn', style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Stack(children: [
      SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Trắc nghiệm tính cách',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              sizedBox(10.0),
              textGuide(
                  'Bài trắc nghiệm này gồm 70 câu hỏi ngắn về chính bản thân bạn.Bạn có 10 phút để làm bài '),
              sizedBox(10.0),
              textGuide(
                  'Sau khi hoàn thành bài trắc nghiệm bạn sẽ nhận được kết quả thuộc 1 trong 16 nhóm tính cách sau :'),
              sizedBox(10.0),
              Image.asset('./mbti.png'),
              sizedBox(10.0),
              textGuide(
                  'Để bài trắc nghiệm cho kết quả đúng nhất, bạn nên :'),
              sizedBox(10.0),
              textGuide('- Trả lời thành thật.'),
              sizedBox(4.0),
              textGuide(
                  '- Trả lời theo bản thân mình hiện tại, không phải theo ước vọng mình muốn.'),
              sizedBox(4.0),
              textGuide(
                  '- Câu trả lời theo trực giác ban đầu chính xác nhất'),
            ]),
      ),
    ),
     Container(
       alignment: Alignment.center,
       height: 100,
       //width: double.infinity,
       color: Colors.blue,
     )
    ],
    ),);
  }
}

Widget sizedBox(double height) {
  return SizedBox(
    height: height,
  );
}

Widget textGuide(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 18),
  );
}
