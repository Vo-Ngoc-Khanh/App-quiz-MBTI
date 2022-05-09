import 'package:flutter/material.dart';
import '../views/alertdialog.dart';
import '../views/result.dart';
import '../widgets/colors.dart';
import '../widgets/sizedbox.dart';
import '../model/json/questionjson.dart';
import '../widgets/radiobutton.dart';
import '../widgets/text.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  late int indexAnwser, E, I, S, N, T, F, J, P;

  late String result1, result2, result3, result4;
  
  var send = [
  {'group': '1', 'click': false},
  {'group': '2', 'click': false},
  {'group': '3', 'click': false},
  {'group': '4', 'click': false},
  {'group': '5', 'click': false},
  {'group': '6', 'click': false},
  {'group': '7', 'click': false},
  {'group': '8', 'click': false},
  {'group': '9', 'click': false},
  {'group': '10', 'click': false},
  {'group': '11', 'click': false},
  {'group': '12', 'click': false},
  {'group': '13', 'click': false},
  {'group': '14', 'click': false},
  {'group': '15', 'click': false},
  {'group': '16', 'click': false},
  {'group': '17', 'click': false},
  {'group': '18', 'click': false},
  {'group': '19', 'click': false},
  {'group': '20', 'click': false},
  {'group': '21', 'click': false},
  {'group': '22', 'click': false},
  {'group': '23', 'click': false},
  {'group': '24', 'click': false},
  {'group': '25', 'click': false},
  {'group': '26', 'click': false},
  {'group': '27', 'click': false},
  {'group': '28', 'click': false},
  {'group': '29', 'click': false},
  {'group': '30', 'click': false},
  {'group': '31', 'click': false},
  {'group': '32', 'click': false},
  {'group': '33', 'click': false},
  {'group': '34', 'click': false},
  {'group': '35', 'click': false},
  {'group': '36', 'click': false},
  {'group': '37', 'click': false},
  {'group': '38', 'click': false},
  {'group': '39', 'click': false},
  {'group': '40', 'click': false},
  {'group': '41', 'click': false},
  {'group': '42', 'click': false},
  {'group': '43', 'click': false},
  {'group': '44', 'click': false},
  {'group': '45', 'click': false},
  {'group': '46', 'click': false},
  {'group': '47', 'click': false},
  {'group': '48', 'click': false},
  {'group': '49', 'click': false},
  {'group': '50', 'click': false},
  {'group': '51', 'click': false},
  {'group': '52', 'click': false},
  {'group': '53', 'click': false},
  {'group': '54', 'click': false},
  {'group': '55', 'click': false},
  {'group': '56', 'click': false},
  {'group': '57', 'click': false},
  {'group': '58', 'click': false},
  {'group': '59', 'click': false},
  {'group': '60', 'click': false},
  {'group': '61', 'click': false},
  {'group': '62', 'click': false},
  {'group': '63', 'click': false},
  {'group': '64', 'click': false},
  {'group': '65', 'click': false},
  {'group': '66', 'click': false},
  {'group': '67', 'click': false},
  {'group': '68', 'click': false},
  {'group': '69', 'click': false},
  {'group': '70', 'click': false},
];

  @override
  void initState() {
    indexAnwser = 0;
    E =  I = S = N =  T =  F =  J =  P = 0;
    result1 = result2 = result3 = result4 = '';
    super.initState();
  }

  void _chooseAnswer(String choose, bool click) {
    if (click == false) {
      if (choose == "E") {
        E++;
      } else if (choose == "I") {
        I++;
      } else if (choose == "S") {
        S++;
      } else if (choose == "N") {
        N++;
      } else if (choose == "T") {
        T++;
      } else if (choose == "F") {
        F++;
      } else if (choose == "J") {
        J++;
      } else if (choose == "P") {
        P++;
      }
    } else {
      if (choose == "E") {
        I--;
        E++;
      } else if (choose == "I") {
        E--;
        I++;
      } else if (choose == "S") {
        N--;
        S++;
      } else if (choose == "N") {
        S--;
        N++;
      } else if (choose == "T") {
        F--;
        T++;
      } else if (choose == "F") {
        T--;
        F++;
      } else if (choose == "J") {
        P--;
        J++;
      } else if (choose == "P") {
        J--;
        P++;
      }
    }
  }
  
  String resultQuiz() {
    if (E >= I) {
      result1 = 'E';
    } else if (E < I) {
      result1 = 'I';
    }
    if (S >= N) {
      result2 = 'S';
    } else if (S < N) {
      result2 = 'N';
    }
    if (T >= F) {
      result3 = 'T';
    } else if (T < F) {
      result3 = 'F';
    }
    if (J >= P) {
      result4 = 'J';
    } else if (J < P) {
      result4 = 'P';
    }
    return result1 + result2 + result3 +result4;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: general,
        title: textAppBar('Trắc nghiệm MBTI'),
        leading: IconButton(
            onPressed: () {
              showAlertDialog(context);
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          Row(
            children: [
              const Text('Câu : ', style: TextStyle(fontSize: 16,fontFamily: 'Times New Roman'),),
              Text('$indexAnwser',
                style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.yellow),
              ),
              const Text('/70', style: TextStyle(fontSize: 18,fontFamily: 'Times New Roman'),),
              const SizedBox(width: 50,),
            ],
          )
        ],
      ),
      body: Card(
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          separatorBuilder: (BuildContext context, int index) => const Divider(),
          itemCount: 5,//questions.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxh10(),
                  textBold(questions[index]['questionText'] as String),
                  sizedBoxh5(),
                  ...(questions[index]['answerText'] as List<Map<String, dynamic>>).map((answer) {
                    return radioButton(
                        title: answer['text'],
                        value: answer['case'],
                        group: send[index]['group'] as String,
                        onChanged: (newValue) {
                          setState(() {
                            if (send[index]['click'] == false) {indexAnwser++;}
                            send[index]['group'] = newValue!;
                            _chooseAnswer(answer['case'] as String, send[index]['click'] as bool);
                            send[index]['click'] = true;
                          });
                        });
                  }).toList(),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: Visibility(
        visible: indexAnwser == 5 ? true : false,
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (context) => ResultPage(resultQuiz(),E*2,I*2,S,N,T,F,J,P)),
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
}
