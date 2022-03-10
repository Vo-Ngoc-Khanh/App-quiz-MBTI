import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/views/settings.dart';

import 'guide.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/images/logo.png', height: 400, width: 400,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GuidePage()));
                  },
                  child: const Text('PLAY')),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('Trắc nghiệm tính cách'),
          leading: Image.asset('assets/images/logo.png'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none),
            ),
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
        )
    );
  }
}
