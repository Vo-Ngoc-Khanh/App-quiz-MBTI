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
  int indexAnwser = 0;


  String result1 = '';
  String result2 = '';
  String result3 = '';
  String result4 = '';
  String result = '';
  
  int E = 0;int I = 0;int S = 0;int N = 0;int T = 0;int F = 0;int J = 0;int P = 0;

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
    result =  result1 + result2 + result3 +result4;
    return result;
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
          itemCount: questions.length,
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
        visible: indexAnwser == 70? true : false,
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
