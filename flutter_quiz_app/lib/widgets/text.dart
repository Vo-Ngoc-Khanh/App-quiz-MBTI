import 'package:flutter/material.dart';



Widget textAppBar(String text){
  return Text(text,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Times New Roman'));
}

Widget textfs14(String text){
  return Text(text, style: const TextStyle(fontSize: 14,height: 1.5,fontFamily: 'Times New Roman'),textAlign: TextAlign.justify,);
}

Widget textfs18(String text) {
  return Text(text, style: const TextStyle(fontSize: 18,fontFamily: 'Times New Roman',height: 1.5),textAlign: TextAlign.justify,);
}
Widget textfs16(String text) {
  return Text(text,style: const TextStyle(fontSize: 16,fontFamily: 'Times New Roman',height: 1.5), textAlign: TextAlign.justify,);
}
Widget textBold(String text){
  return Text(text, style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Times New Roman'));
}

Widget textBoldwhite(String text){
  return Text(text, style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Times New Roman',color: Colors.white));
}


Widget textButton(String text){
  return Text(text, style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Times New Roman'),);
}
