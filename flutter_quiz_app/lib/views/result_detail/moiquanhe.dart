import 'package:flutter/material.dart';
import '../../widgets/sizedbox.dart';
import '../../widgets/text.dart';
import '../../model/json/moiqhjson.dart';
import '../../model/getresult.dart';


class MoiQuanHe extends StatelessWidget {
  const MoiQuanHe({ Key? key, required this.result }) : super(key: key);
  final String result;

  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          textfs14(moiquanhe[getResult(result)]['mqh1'] as String),
          sizedBoxh15(),
          textfs14(moiquanhe[getResult(result)]['mqh2'] as String),
          sizedBoxh15(), 
          textfs14(moiquanhe[getResult(result)]['mqh3'] as String),
          sizedBoxh15(),     
          textfs14(moiquanhe[getResult(result)]['mqh4'] as String),
          sizedBoxh15(), 
          textfs14(moiquanhe[getResult(result)]['mqh5'] as String),
        ],
      ),
    );
  }
}