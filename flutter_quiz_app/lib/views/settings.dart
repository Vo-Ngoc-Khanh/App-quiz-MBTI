import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/widgets/colors.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/theme.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _theme = true ;

  void _getTheme() async{
    SharedPreferences themeChange = await SharedPreferences.getInstance();
    setState(() {
      _theme = themeChange.getBool('theme')??false;
    });
  }
  void _setTheme() async{//bat dong bo
    SharedPreferences themeChange = await SharedPreferences.getInstance();
    await themeChange.setBool('theme', _theme);
  }
  @override
  void initState() {
    super.initState();
    _getTheme();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: general,
        title: const Text('Cài đặt chung',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Times New Roman')),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Đổi giao diện",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Times New Roman'),),
                Transform.scale(
                    scale: 0.7,
                    child: CupertinoSwitch(
                      value: _theme,
                      onChanged: (bool val) {
                        setState(() {
                          _theme = val;
                          _setTheme();
                          Provider.of<ThemeProvider>(context, listen: false).swapTheme();
                        });
                      },
                    ))
              ],
            ),
            const Divider(height: 10,thickness: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text("Ngôn ngữ", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Times New Roman'),),
                IconButton (
                    icon: Image.asset("assets/images/ngonnguvn.png"),
                    onPressed: () {}
                )
              ],
            ),
            const Divider(height: 10,thickness: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                 Text("Phiên bản", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Times New Roman'),),
                 Text("1.0.0", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: 'Times New Roman'),),
              ],
            ),
            
          ],
        ),
      ),
    );
  }


}
