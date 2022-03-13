import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/views/result.dart';
import 'home.dart';

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
          "text": "A. Nói chuyện với tất cả mọi người, kể cả người lạ",
          "case": "E"
        },
        {"text": "B. Nói chuyện với những người bạn quen", "case": "I"},
      ],
    },
    {
      "questionText": "2. Xu hướng nào trong bạn mạnh hơn?",
      "answerText": [
        {"text": "A. Hướng tới những điều thực tế và cụ thể", "case": "S"},
        {"text": "B. Hướng tới các dự đoán trong tương lai", "case": "N"},
      ],
    },
    {
      "questionText": "3. Tình huống nào khiến bạn cảm thấy tệ hơn?",
      "answerText": [
        {"text": "A. Mọi thứ mông lung, không rõ ràng", "case": "S"},
        {"text": "B. Nhàm chán, đơn điệu", "case": "N"},
      ],
    },
    {
      "questionText": "4. Bạn thấy ấn tượng bởi:",
      "answerText": [
        {"text": "A. Nguyên lý, nguyên tắc", "case": "T"},
        {"text": "B. Cảm xúc, tình cảm", "case": "F"},
      ],
    },
    {
      "questionText": "5. Bạn có xu hướng nghiêng về:",
      "answerText": [
        {"text": "A. Những gì có tính thuyết phục", "case": "T"},
        {"text": "B. Những gì cảm động", "case": "F"},
      ],
    },
  ];

  var send = [
    {'group': '1', 'click': false},
    {'group': '2', 'click': false},
    {'group': '3', 'click': false},
    {'group': '4', 'click': false},
    {'group': '5', 'click': false},
    {'group': '6', 'click': false}
  ];

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
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              ),
              const Text(
                '/5',
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
        visible: indexAnwser == 5 ? true : false,
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
        textAlign: TextAlign.justify,
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
