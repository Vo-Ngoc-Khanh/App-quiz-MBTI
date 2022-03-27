import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/views/settings.dart';

import 'guide.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var img = [
    {'img': 'assets/images/enfj.png','name': 'Tính cách ENFJ','text': 'Người cho đi'},
    {'img': 'assets/images/enfp.png','name': 'Tính cách ENFP','text': 'Người truyền cảm hứng'},
    {'img': 'assets/images/entj.png','name': 'Tính cách ENTJ','text': 'Người điều hành'},
    {'img': 'assets/images/entp.png','name': 'Tính cách ENTP','text': 'Người nhìn xa'},
    {'img': 'assets/images/esfj.png', 'name': 'Tính cách ESFJ','text': 'Người quan tâm'},
    {'img': 'assets/images/esfp.png','name': 'Tính cách ESTJ','text': 'Người trình diễn'},
    {'img': 'assets/images/estj.png','name': 'Tính cách ESTJ','text': 'Người giám hộ'},
    {'img': 'assets/images/estp.png','name': 'Tính cách ESTJ','text': 'Người thực thi'},
    {'img': 'assets/images/infj.png','name': 'Tính cách INFJ','text': 'Người che chở'},
    {'img': 'assets/images/infp.png','name': 'Tính cách INFP','text': 'Người lý tưởng hóa'},
    {'img': 'assets/images/intj.png','name': 'Tính cách INTJ','text': 'Nhà khoa học'},
    {'img': 'assets/images/intp.png','name': 'Tính cách INTP','text': 'Nhà tư duy'},
    {'img': 'assets/images/isfj.png','name': 'Tính cách ISFJ','text': 'Người nuôi dưỡng'},
    {'img': 'assets/images/isfp.png','name': 'Tính cách ISFP','text': 'Người nghệ sĩ'},
    {'img': 'assets/images/istj.png','name': 'Tính cách ISTJ','text': 'Người trách nhiệm'},
    {'img': 'assets/images/istp.png','name': 'Tính cách ISTP','text': 'Nhà kỹ thuật' },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Text('Name'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Trắc nghiệm tính cách'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => const SettingsPage()));
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                const SizedBox(height: 50,),
                Text(
                  img[index]['name'] as String,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                Image.asset( img[index]['img'] as String,height: 300,width: 360,),
                const SizedBox(height: 10,),
                Text(
                  img[index]['text'] as String,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            );
          },
          itemCount: img.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.indigo,
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const GuidePage()));
          },
          label: const Text('KHÁM PHÁ TÍNH CÁCH CỦA BẠN NGAY',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

