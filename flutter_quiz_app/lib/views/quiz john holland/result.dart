import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/model/getresult.dart';
import 'package:fluttter_quiz_app/model/json/quiz%20john%20holland/resultjson.dart';
import 'package:fluttter_quiz_app/widgets/colors.dart';
import 'package:fluttter_quiz_app/widgets/sizedbox.dart';

import '../../widgets/text.dart';

class ResultJohnHolland extends StatelessWidget {
  const ResultJohnHolland({Key? key, required this.result}) : super(key: key);
  final String result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: general,
        title:  textAppBar('Kết quả'),
      ),
      body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          textBold(results[getResultJohnHolland(result)]['tinhcach'] as String),
          sizedBoxh15(),
          textfs14(results[getResultJohnHolland(result)]['text1'] as String),
          sizedBoxh15(),
          textfs14(results[getResultJohnHolland(result)]['text2'] as String),
          sizedBoxh15(),       
          textBold('Nghề nghiệp phù hợp với tính cách $result'),
          sizedBoxh10(),
          textfs14(results[getResultJohnHolland(result)]['nghenghiep'] as String),
        ],
      ),
    )
    );
  }
}



