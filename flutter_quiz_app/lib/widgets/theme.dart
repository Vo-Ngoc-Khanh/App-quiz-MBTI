import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/widgets/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{
  
  late ThemeData _selectedTheme;


  ThemeData dark = ThemeData.dark().copyWith(primaryColor: general);

  ThemeData light = ThemeData.light().copyWith(primaryColor: Colors.black);

  ThemeProvider(bool chooseTheme) {
    _selectedTheme = chooseTheme ? dark : light;
  }

  Future<void> swapTheme() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();

    if (_selectedTheme == dark) {
      _selectedTheme = light;
      await prefs.setBool("darkTheme", false);
    } else {
      _selectedTheme = dark;
      await prefs.setBool("darkTheme", true);
    }

    notifyListeners();
  }

  ThemeData getTheme() => _selectedTheme;
}