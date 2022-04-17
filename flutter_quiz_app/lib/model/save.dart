import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Save{
  String name;
  String result;
  
  Save({required this.name,required this.result});

  Save.fromMap(Map map):
    name = map['name'],
    result = map['result'];
  
  Map toMap(){
    return {
      'name':name,
      'result':result,
    };
  }
}

List<Save> list = [];

late SharedPreferences pref;

void saveData()async{
    pref = await SharedPreferences.getInstance();
    List<String> saveList = list.map((e) => jsonEncode(e.toMap())).toList();
    pref.setStringList('list', saveList);
}

void addItem(Save item){
    list.add(item);
    saveData();
}

