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
    {'img': 'assets/images/enfj.png', 'name': 'Tính cách ENFJ'},
    {'img': 'assets/images/enfp.png', 'name': 'Tính cách ENFP'},
    {'img': 'assets/images/entj.png', 'name': 'Tính cách ENTJ'},
    {'img': 'assets/images/entp.png', 'name': 'Tính cách ENTP'},
    {'img': 'assets/images/esfj.png', 'name': 'Tính cách ESFJ'},
    {'img': 'assets/images/esfp.png', 'name': 'Tính cách ESTJ'},
    {'img': 'assets/images/estj.png', 'name': 'Tính cách ESTJ'},
    {'img': 'assets/images/estp.png', 'name': 'Tính cách ESTJ'},
    {'img': 'assets/images/infj.png', 'name': 'Tính cách INFJ'},
    {'img': 'assets/images/infp.png', 'name': 'Tính cách INFP'},
    {'img': 'assets/images/intj.png', 'name': 'Tính cách INTJ'},
    {'img': 'assets/images/intp.png', 'name': 'Tính cách INTP'},
    {'img': 'assets/images/isfj.png', 'name': 'Tính cách ISFJ'},
    {'img': 'assets/images/isfp.png', 'name': 'Tính cách ISFP'},
    {'img': 'assets/images/istj.png', 'name': 'Tính cách ISTJ'},
    {'img': 'assets/images/istp.png', 'name': 'Tính cách ISTP'},
  ];
  bool bright = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trắc nghiệm tính cách'),
        leading: Image.asset('assets/images/logo.png'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsPage()));
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    img[index]['name'] as String,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    img[index]['img'] as String,
                    height: 400,
                    width: 500,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    img[index]['name'] as String,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: img.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const GuidePage()));
          },
          label: const Text(
            'KHÁM PHÁ TÍNH CÁCH CỦA BẠN NGAY',
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
