import 'package:flutter/material.dart';

import '../widgets/text.dart';

class SaveNewResult extends StatefulWidget {
  const SaveNewResult({ Key? key }) : super(key: key);

  @override
  State<SaveNewResult> createState() => _SaveNewResult();
}

class _SaveNewResult extends State<SaveNewResult> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: textAppBar('Lưu kết quả trắc nghiệm'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textController,
              style: const TextStyle( fontWeight: FontWeight.w300, fontSize: 18, fontFamily: 'Times New Roman'),
              decoration: const InputDecoration(
                hintText: 'Nhập tên của bạn',
                label: Text('Name')
              ),
            ),
            ElevatedButton(
              onPressed: (){
                if(textController.text.isNotEmpty){
                  Navigator.of(context).pop(textController.text);
                }
              }, 
              child: const Text('Save'))
          ]
        ),
      ),
    );
  }
}