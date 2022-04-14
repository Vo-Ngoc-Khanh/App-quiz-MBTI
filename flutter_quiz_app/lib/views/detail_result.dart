import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/detail%20result/moiquanhe.dart';
import 'package:fluttter_quiz_app/detail%20result/nguyentacthanhcong.dart';
import 'package:fluttter_quiz_app/detail%20result/sunghiep.dart';
import 'package:fluttter_quiz_app/detail%20result/tongquan.dart';
import 'package:fluttter_quiz_app/detail%20result/uunhuocdiem.dart';
import 'package:fluttter_quiz_app/widgets/colors.dart';
import 'package:fluttter_quiz_app/widgets/icon.dart';


class DetailResult extends StatefulWidget {
  const DetailResult({Key? key, required this.result}) : super(key: key);
  final String result;

  @override
  State<DetailResult> createState() => _DetailResultState();
}

class _DetailResultState extends State<DetailResult> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: general,
          title:Text( 'Xem chi tiết tính cách ${widget.result}',style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Times New Roman'),
          ),
          titleSpacing: 0,
          elevation: 20, 
          bottom: const TabBar(
            indicatorColor: Colors.white,
            isScrollable: true,
            indicatorWeight: 5,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Tổng quan',),
              Tab(icon: Icon(Icons.list_alt),text: 'Nguyên tắc thành công',),
              Tab( icon: Icon(Icons.person),text: 'Mối quan hệ',),
              Tab(icon: Icon(work), text: 'Sự nghiệp',),
              Tab(icon: Icon(Icons.add_card),text: 'Ưu và nhược điểm',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TongQuan(result: widget.result,),
            NguyenTacThanhCong(result: widget.result,),
            MoiQuanHe(result: widget.result,),
            SuNghiep(result: widget.result,),
            UuDiemNhuocDiem(result: widget.result,),
          ],
        ),
      ),
    );
  }
}
