import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:fluttter_quiz_app/views/alertdialog.dart';
import 'package:fluttter_quiz_app/views/result.dart';
=======
//import 'package:fluttter_quiz_app/views/result.dart';
import 'home.dart';
>>>>>>> e083d7d23b82f8b1c27840f329318305bf1e07d0

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int indexAnwser = 0;
  bool finished() {
    if (indexAnwser == 5) {
      return true;
    }
    return false;
  }

  final questions = [
    {
      "questionText": "1. Trong một buổi tiệc, bạn sẽ:",
      "answerText": [
        {
          "text": "Nói chuyện với tất cả mọi người, kể cả người lạ",
          "case": "E"
        },
        {"text": "Nói chuyện với những người bạn quen", "case": "I"},
      ],
    },
    {
      "questionText": "2. Xu hướng nào trong bạn mạnh hơn?",
      "answerText": [
        {"text": "Hướng tới những điều thực tế và cụ thể", "case": "S"},
        {"text": "Hướng tới các dự đoán trong tương lai", "case": "N"},
      ],
    },
    {
      "questionText": "3. Tình huống nào khiến bạn cảm thấy tệ hơn?",
      "answerText": [
        {"text": "Mọi thứ mông lung, không rõ ràng", "case": "S"},
        {"text": "Nhàm chán, đơn điệu", "case": "N"},
      ],
    },
    {
      "questionText": "4. Bạn thấy ấn tượng bởi:",
      "answerText": [
        {"text": "Nguyên lý, nguyên tắc", "case": "T"},
        {"text": "Cảm xúc, tình cảm", "case": "F"},
      ],
    },
    {
      "questionText": "5. Bạn có xu hướng nghiêng về:",
      "answerText": [
        {"text": "Những gì có tính thuyết phục", "case": "T"},
        {"text": "Những gì cảm động", "case": "F"},
      ],
    },
    {
      "questionText": "6. Bạn thích làm việc:",
      "answerText": [
        {"text": "Theo thời hạn (deadline)", "case": "J"},
        {"text": "Tùy hứng", "case": "P"},
      ],
    },
    {
      "questionText": "7. Khi lựa chọn, bạn thường:",
      "answerText": [
        {"text": "Khá cẩn thận, xem xét kĩ lưỡng", "case": "J"},
        {"text": "Tin vào cảm giác lúc lựa chọn", "case": "P"},
      ],
    },
    {
      "questionText": "8. Tại các buổi gặp mặt, bạn sẽ:",
      "answerText": [
        {"text": "Ở lại đến cuối buổi, càng lúc càng phấn khích", "case": "E"},
        {"text": "Ra về sớm và cảm thấy mệt", "case": "I"},
      ],
    },
    {
      "questionText": "9. Tuýp người nào sẽ thu hút bạn hơn?",
      "answerText": [
        {"text": "Người có đầu óc xét đoán, biết điều", "case": "S"},
        {"text": "Người có khả năng tưởng tượng phong phú", "case": "N"},
      ],
    },
    {
      "questionText": "10. Bạn hứng thú hơn với:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "6. Bạn thích tôi chứ gì?:",
      "answerText": [
        {"text": "A. có", "case": "T"},
        {"text": "B. không", "case": "F"},
      ],
    },
  ];

  var send = [
    {'group': '1', 'click': false},
    {'group': '2', 'click': false},
    {'group': '3', 'click': false},
    {'group': '4', 'click': false},
    {'group': '5', 'click': false},
    {'group': '6', 'click': false},
<<<<<<< HEAD
    {'group': '7', 'click': false},
    {'group': '8', 'click': false},
    {'group': '9', 'click': false},
    {'group': '10', 'click': false},
=======
    {'group': '7', 'click': false}
>>>>>>> e083d7d23b82f8b1c27840f329318305bf1e07d0
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trắc nghiệm tính cách'),
        leading: IconButton(
            onPressed: () {
              showAlertDialog(context);
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          Row(
            children: [
              const Text(
                'Câu : ',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                '$indexAnwser',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              ),
              const Text(
<<<<<<< HEAD
                '/10',
=======
                '/6',
>>>>>>> e083d7d23b82f8b1c27840f329318305bf1e07d0
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
            ],
          )
        ],
      ),
      body: Card(
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  _Question(
                    questions[index]['questionText'] as String,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ...(questions[index]['answerText']
                          as List<Map<String, dynamic>>)
                      .map((answer) {
                    return _RadioButton(
                        title: answer['text'],
                        value: answer['case'],
                        group: send[index]['group'] as String,
                        onChanged: (newValue) {
                          setState(() {
                            if (send[index]['click'] == false) {
                              indexAnwser++;
                            }
                            send[index]['group'] = newValue!;
                            send[index]['click'] = true;
                          });
                        });
                  }).toList(),
                ],
              ),
            );
          },
          itemCount: questions.length,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
      floatingActionButton: Visibility(
<<<<<<< HEAD
        visible: indexAnwser == 10 ? true : false,
=======
        visible: indexAnwser == 6 ? true : false,
>>>>>>> e083d7d23b82f8b1c27840f329318305bf1e07d0
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const ResultPage()),
              (Route<dynamic> route) => false,
            );
          },
          label: const Text('Hoàn thành'),
          icon: const Icon(Icons.check),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _Question(String questionText) {
    return Text(
      questionText,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _RadioButton(
      {required String title,
      required String value,
      required Function(String?)? onChanged,
      required String group}) {
    return RadioListTile(
      value: value,
      groupValue: group,
      onChanged: onChanged,
      title: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
