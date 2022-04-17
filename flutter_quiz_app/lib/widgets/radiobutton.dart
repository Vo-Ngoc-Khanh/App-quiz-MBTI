import 'package:flutter/material.dart';
import '../widgets/text.dart';

Widget radioButton({required String title, required String value, required Function(String?)? onChanged, required String group})
{
    return RadioListTile(
      value: value,
      groupValue: group,
      onChanged: onChanged,
      title: textfs16(title),
    );
}