import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/views/detail_result.dart';
import 'package:fluttter_quiz_app/views/saveuser.dart';
import 'package:fluttter_quiz_app/widgets/colors.dart';
import '../model/save.dart';
import '../widgets/text.dart';
import 'home.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ResultPage extends StatefulWidget {
  const ResultPage(this.result, this.E, this.I, this.S, this.N, this.T, this.F, this.J, this.P, {Key? key}) : super(key: key);

  final String result;
  final int E;final int I;final int S;final int N;final int T;final int F;final int J;final int P;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  
   final List<charts.Series<TinhCach,String>> _seriesPieData = <charts.Series<TinhCach, String>>[];
  _getData(){
    var pieData = [
      TinhCach('Hướng ngoại', widget.E, Colors.pink),
      TinhCach('Hướng nội', widget.I, Colors.blue),
      TinhCach('Giác quan', widget.S, Colors.orange),
      TinhCach('Trực giác', widget.N, Colors.green),
      TinhCach('Lý trí', widget.T, Colors.yellow),
      TinhCach('Cảm xúc', widget.F, Colors.cyan),
      TinhCach('Nguyên tắc', widget.J, Colors.red),
      TinhCach('Linh hoạt', widget.P, Colors.purple),
    ];
     _seriesPieData.add(
      charts.Series(
        data: pieData,
        id: 'Kết quả',
        domainFn: (TinhCach tc,_)=>tc.ten,
        measureFn: (TinhCach tc,_)=>tc.diem,
        colorFn: (TinhCach tc,_)=>
          charts.ColorUtil.fromDartColor(tc.color),
        labelAccessorFn: (TinhCach tc, _)=>'${((tc.diem*100)/70).toStringAsFixed(2)}%',
      )
     );
  }
  
  

  @override
  void initState() {
    super.initState();
    _getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: general,
        title:  textAppBar('Kết quả'),
        leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                    (Route<dynamic> route) => false,
              );
            },
            icon: const Icon(Icons.arrow_back)),
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
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          textBold('Tính cách của bạn thuộc nhóm ${widget.result}'),
          Expanded(child: charts.PieChart(
            _seriesPieData,
            animate: true,
            animationDuration: const Duration(seconds: 3),
            behaviors: [
              charts.DatumLegend(
                outsideJustification: charts.OutsideJustification.endDrawArea,
                horizontalFirst: false,
                desiredMaxRows: 2,
                cellPadding: const EdgeInsets.all(4.0),
                entryTextStyle: charts.TextStyleSpec(
                  color: charts.MaterialPalette.purple.shadeDefault,
                  fontFamily: 'Times New Roman',
                  fontSize: 11
                ),
              ),
            ],
            defaultRenderer: charts.ArcRendererConfig(
              arcWidth: 100,
              arcRendererDecorators: [
                charts.ArcLabelDecorator(
                  labelPosition: charts.ArcLabelPosition.inside
                )
              ]
            ),
          ))
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

class TinhCach{
  String ten;
  int diem;
  Color color;
  TinhCach(this.ten,this.diem,this.color);
}
