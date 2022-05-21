import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/views/quiz%20john%20holland/result.dart';

import '../../model/json/quiz john holland/questionsjson.dart';
import '../../widgets/colors.dart';
import '../../widgets/sizedbox.dart';
import '../../widgets/text.dart';
import '../alertdialog.dart';

class JohnHollandQuiz extends StatefulWidget {
  const JohnHollandQuiz({Key? key}) : super(key: key);

  @override
  State<JohnHollandQuiz> createState() => _JohnHollandQuizState();
}
class _JohnHollandQuizState extends State<JohnHollandQuiz> {
  late int indexAnswer;
 late int  R, I, A, S, E, C;
 late String result;
 void _chooseAnswer(int choose, int index){
    if(index>=0 && index <9)
    {
      R+=choose;
    }else if(index>=9 && index <18){
      I+=choose;
    }else if(index>=18 && index <27){
      A+=choose;
    }else if(index>=27 && index <36){
      S+=choose;
    }else if(index>=36 && index <45){
      E+=choose;
    }else if(index>=45 && index <54){
      C+=choose;
    }
 }
 int maxchoose(){
   List<int> arr = [R,I,A,S,E,C];
   int max = arr[0];
    for (int i = 1; i < 6; i++) {
      if (max < arr[i]) {
        max = arr[i];
      }
    }
    return max;

 }

 String resultQuiz(int max){
   if( max == R){
     result = 'R';
   }else if(max == I){
     result = 'I';
   }else if(max == A){
     result = 'A';
   }else if(max == S){
     result = 'S';
   }else if(max == E){
     result = 'E';
   }else if(max == C){
     result = 'C';
   }
   return result;
 }
  @override
  void initState() {
    indexAnswer = 0;
    result = '';
    R = I = A = S = E = C = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: general,
        title: textAppBar('Trắc nghiệm John Holland'),
        leading: IconButton(
            onPressed: () {
              showAlertDialog(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                textBold(questions[indexAnswer]['questionText'] as String),
                const SizedBox(height: 30,),
                ...(questions[indexAnswer]['answerText'] as List<Map<String, dynamic>>).map((answer) {
                  return Column(
                    children: [
                      ElevatedButton(
                        child: Text(answer['text']),
                        onPressed: () {  
                          setState(() {
                              if(indexAnswer<questions.length-1){
                               indexAnswer++;
                               _chooseAnswer(answer['case'], indexAnswer);
                              }
                              else{
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ResultJohnHolland(result: resultQuiz(maxchoose()),),
                                ));
                              }
                            });
                        },
                        style: ElevatedButton.styleFrom(
                              fixedSize: const Size(400, 50), primary: general),
                        ),
                      sizedBoxh15(),
                    ],
                  );
                }).toList(),
              ],
            )
      ),
    );
  }
}