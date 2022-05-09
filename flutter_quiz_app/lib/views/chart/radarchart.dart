// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/model/save.dart';
import 'package:fluttter_quiz_app/widgets/text.dart';
import 'package:spider_chart/spider_chart.dart';
import '../../widgets/colors.dart';
import '../detail_result.dart';
import '../home.dart';
import '../saveuser.dart';



class RadarChart extends StatefulWidget {
  const RadarChart( this.result, this.E, this.I, this.S, this.N, this.T, this.F, this.J, this.P,{Key? key} ) : super(key: key);
  final String result;
  final double E, I, S, N, T, F, J, P;
  @override
  State<RadarChart> createState() => _RadarChartState();
}

class _RadarChartState extends State<RadarChart> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: textAppBar('Kết quả'),
      backgroundColor: general,
              leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                    (Route<dynamic> route) => false,
              );
            },
            icon: const Icon(Icons.arrow_back)
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            tooltip: 'Lưu kết quả',
            onPressed: () {
              setState(() {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>const SaveNewResult()))
                .then((value) {
                  setState(() {
                    if(value!=null) addItem(Save(name: value, result: widget.result));
                  });
                });
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.share),
            tooltip: 'Chia sẻ',
            onPressed: () {
            },
          ),
        ],),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom:100),
            child: textBold('Tính cách của bạn thuộc nhóm ${widget.result}'),
          ),
          Center(
            child: SizedBox(
            width: 200,
            height: 200,
            child: SpiderChart(
              data:[widget.E,widget.F,widget.I,widget.J,widget.N,widget.P,widget.S,widget.T,],
              maxValue: 17, 
              colors: const [Colors.red,Colors.green,Colors.blue,Colors.yellow,Colors.indigo,Colors.orange,Colors.purple,Colors.tealAccent,],
              labels: const ['Hướng nội','Hướng ngoại','Giác quan','Trực giác','Lý trí','Cảm xúc','Nguyên tắc','Linh hoạt'],
              )),
          )
        ],),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: general,
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => DetailResult(result: widget.result,)));
          },
          label: textButton('Xem chi tiết')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

