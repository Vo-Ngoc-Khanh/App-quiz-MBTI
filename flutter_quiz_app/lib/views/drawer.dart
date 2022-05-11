import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/widgets/colors.dart';
import 'package:fluttter_quiz_app/widgets/text.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/save.dart';
import 'detail_result.dart';

class BuildDrawer extends StatefulWidget {
  const BuildDrawer({ Key? key }) : super(key: key);

  @override
  State<BuildDrawer> createState() => _BuildDrawerState();
}

class _BuildDrawerState extends State<BuildDrawer> {
 
  @override
  void initState() {
    initPref();
    super.initState();
  }
  void initPref() async{
    pref = await SharedPreferences.getInstance();
    loadData();
  }

  void loadData() {
    List<String>? listString = pref.getStringList('list');
    if(listString != null){
      list = listString.map((item) => Save.fromMap(json.decode(item))).toList();
      setState((){});
      
    }
  }
  void removeItem(Save item) {
    list.remove(item);
    saveData();
    if(list.isEmpty) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 100,
          child:  DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                textBoldwhite('KẾT QUẢ ĐÃ LƯU'),
                IconButton(onPressed: (){
                  setState(() {});
                }, icon: const Icon(Icons.save,color: Colors.white,))
              ],
            ),
            decoration: BoxDecoration(
              color: general,
            )
          ),
        ),
        list.isNotEmpty ? Container(
          alignment:Alignment.center,
          height: double.maxFinite,
          child:  ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {  
              return  Column(
                children: [
                  Dismissible(
                  key: Key(list.hashCode.toString()),
                  onDismissed: (direction)=>removeItem(list[index]),
                  background: Container(
                    color: Colors.red, 
                    child: const Icon(Icons.delete,color: Colors.white,),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 16.0),
                  ),
                  direction: DismissDirection.startToEnd,
                  child: ListTile(
                    title: textBold(list[index].name),
                    trailing: textBold(list[index].result),
                    onTap: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DetailResult(result: list[index].result,)));
                    },
                    ),
                ),
                const Divider(height: 1,thickness: 2,),
                ],
              );
              },
              )
        ):Container(
          alignment: Alignment.center,
          height: 500,
          child: SizedBox(
            height: 100,
            child: textBold('Chưa lưu kết quả nào',)
            )
        ),
      ],
    );
  }
}
