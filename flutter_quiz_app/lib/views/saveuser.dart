import 'package:flutter/material.dart';

import '../widgets/text.dart';

class SaveNewResult extends StatefulWidget {
  const SaveNewResult({ Key? key }) : super(key: key);

  @override
  State<SaveNewResult> createState() => _SaveNewResult();
}

class _SaveNewResult extends State<SaveNewResult> {
  // ignore: non_constant_identifier_names
  TextEditingController TextController = TextEditingController();
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
              controller: TextController,
            ),
            ElevatedButton(
              onPressed: (){
                if(TextController.text.isNotEmpty){
                  Navigator.of(context).pop(TextController.text);
                }
              }, 
              child: const Text('Save'))
          ]
        ),
      ),
    );
  }
}