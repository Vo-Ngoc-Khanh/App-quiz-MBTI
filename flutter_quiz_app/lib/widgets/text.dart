
import 'package:flutter/material.dart';

class TextDetail extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const TextDetail(this.text ) : super();
   final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(fontSize: 14,height: 1.5,fontFamily: 'Times New Roman'),textAlign: TextAlign.justify,);
  }
}