import 'package:flutter/material.dart';
import '../../widgets/sizedbox.dart';
import '../../widgets/text.dart';
import '../../model/json/tongquanjson.dart';
import '../../model/getresult.dart';

class TongQuan extends StatelessWidget {
  const TongQuan({ Key? key, required this.result }) : super(key: key);
  final String result;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          textfs14(tongquan[getResult(result)]['tongquan1'] as String),
          sizedBoxh15(),
          textfs14(tongquan[getResult(result)]['tongquan2'] as String),
          sizedBoxh15(),
          textfs14(tongquan[getResult(result)]['tongquan3'] as String),
          sizedBoxh15(),   
          textfs14(tongquan[getResult(result)]['tongquan4'] as String),
          sizedBoxh15(),
          textfs14(tongquan[getResult(result)]['tongquan5'] as String),
        ],
      ),
    );
  }
}