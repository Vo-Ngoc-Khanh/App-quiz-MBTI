import 'package:flutter/material.dart';
import '../../widgets/sizedbox.dart';
import '../../widgets/text.dart';
import '../../model/json/nguyentacjson.dart';
import '../../model/getresult.dart';

class NguyenTacThanhCong extends StatelessWidget {
  const NguyenTacThanhCong({ Key? key, required this.result }) : super(key: key);
  final String result;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          textBold('Điểm mạnh trong công việc'),
          sizedBoxh10(),
          textfs14(nguyentac[getResult(result)]['diemmanh'] as String),
          sizedBoxh15(),
          textBold('Điểm yếu trong công việc'),
          sizedBoxh10(),
          textfs14(nguyentac[getResult(result)]['diemyeu'] as String),
          sizedBoxh15(),
          textBold('Nguyên tắc chung'),
          sizedBoxh10(),
          textfs14(nguyentac[getResult(result)]['nguyentacthanhcong'] as String),
        ],
      ),
    );
  }
}