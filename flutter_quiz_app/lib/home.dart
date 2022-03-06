import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/guide.dart';
import 'package:fluttter_quiz_app/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Trắc nghiệm tính cách'),
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
        ),
        body: Container(
          child: Center(
              child: ElevatedButton(
            child: const Text('play'),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const GuidePage())),
          )),
        ));
  }
}
