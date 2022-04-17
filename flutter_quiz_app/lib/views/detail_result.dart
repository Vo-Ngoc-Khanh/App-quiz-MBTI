import 'package:flutter/material.dart';
import '../widgets/colors.dart';
import '../widgets/icon.dart';
import '../widgets/text.dart';
import 'result_detail/moiquanhe.dart';
import 'result_detail/nguyentacthanhcong.dart';
import 'result_detail/sunghiep.dart';
import 'result_detail/tongquan.dart';
import 'result_detail/uunhuocdiem.dart';



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
          title:textAppBar( 'Xem chi tiết tính cách ${widget.result}',),
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
