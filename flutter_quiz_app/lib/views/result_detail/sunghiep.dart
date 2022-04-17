import 'package:flutter/material.dart';
import '../../widgets/sizedbox.dart';
import '../../widgets/text.dart';
import '../../model/getresult.dart';
import '../../model/json/sunghiepjson.dart';

class SuNghiep extends StatelessWidget {
  const SuNghiep({ Key? key, required this.result }) : super(key: key);
  final String result;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          textfs14(sunghiep[getResult(result)]['sunghiep1'] as String),
          sizedBoxh15(),
          textfs14(sunghiep[getResult(result)]['sunghiep2'] as String),
          sizedBoxh15(),
          textfs14(sunghiep[getResult(result)]['sunghiep3'] as String),
          sizedBoxh15(),       
          textfs14(sunghiep[getResult(result)]['sunghiep4'] as String),
          sizedBoxh15(),
          textBold('Đặc điểm của tính cách $result'),
          sizedBoxh10(),
          textfs14(sunghiep[getResult(result)]['dacdiem'] as String),
          sizedBoxh15(),
          textBold('Nghề nghiệp phù hợp với tính cách $result'),
          sizedBoxh10(),
          textfs14(sunghiep[getResult(result)]['goiynghe'] as String),
        ],
      ),
    );
  }
}
