import 'package:flutter/material.dart';
import '../../widgets/sizedbox.dart';
import '../../widgets/text.dart';
import '../../model/getresult.dart';
import '../../model/json/uunhuocdiemjson.dart';

class UuDiemNhuocDiem extends StatelessWidget {
  const UuDiemNhuocDiem({ Key? key, required this.result }) : super(key: key);
  final String result;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          textBold('Ưu điểm của tính cách $result'),
          sizedBoxh10(),
          textfs14(uudiemnhuocdiem[getResult(result)]['uudiem'] as String),
          sizedBoxh15(),
          textBold('Nhược điểm của tính cách $result'),
          sizedBoxh10(),
          textfs14(uudiemnhuocdiem[getResult(result)]['nhuocdiem'] as String),
        ],
      ),
    );
  }
}
