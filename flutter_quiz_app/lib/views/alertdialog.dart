import 'package:flutter/material.dart';

import 'home.dart';

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text("Không"),
    onPressed: () {
      Navigator.of(context).pop(false);
    },
  );
  Widget continueButton = TextButton(
    child: const Text("Có"),
    onPressed: () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
        (Route<dynamic> route) => false,
      );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Thông báo"),
    content: const Text("Kết quả sẽ bị hủy, bạn muốn thoát không?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
