import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/home.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kết quả'),
        leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                (Route<dynamic> route) => false,
              );
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            icon: const Icon(Icons.download_rounded),
            tooltip: 'Lưu về máy',
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.share),
            tooltip: 'Chia sẻ',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'TÍNH CÁCH CỦA BẠN THUỘC NHÓM : INTJ',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[400]),
                  ),
                  sizedBox(10.0),
                  text(
                      'Bạn thích sự độc lập và ngăn nắp. Bạn là người giàu trí tưởng tưởng. Bạn có óc phân tích và logic. Bạn luôn khao khác nâng cao năng lực và kiến thức của mình.Bạn khá thận trọng và kín đáo.'),
                  sizedBox(10.0),
                  text(
                      'Việc làm có lẽ phù hợp với bạn là : Nhà văn tự do, hoạch định truyền thông, kiến trúc sư, quản trị mạng, kĩ sư phần mềm'),
                  sizedBox(10.0),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/images/mbti-result-btns-2.png'),
                      Image.asset(
                        'assets/images/intj.png',
                        height: 300,
                      ),
                    ],
                  ),
                  sizedBox(90.0),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Click để xem chi tiết'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget sizedBox(double height) {
  return SizedBox(
    height: height,
  );
}

Widget text(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 18),
  );
}
