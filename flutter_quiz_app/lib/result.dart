import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/home.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  Widget buildNewPage(String text) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //require length of tab bar (add number tab bar)
      length: 5, //number tab bar below appbar
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'AppBar',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          //centerTitle: true,
          titleSpacing: 0,
          //   leading: IconButton(
          //   icon: const Icon(Icons.menu),
          //   onPressed: () {},
          // ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
          elevation: 20,
          //shadow of appbar
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              /*gradient: LinearGradient(
                  colors: [Colors.green,Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),*/ //change colors appbar
              image: DecorationImage(
                image: AssetImage(
                    "assets/fotis.jpg"),
                fit: BoxFit.cover,
              ),/*change background appbar with image*/
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.list_alt),
                text: 'Feed',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Profile',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              ),
              Tab(
                icon: Icon(Icons.add),
                text: 'Add',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              ListTile(
                title: Text('Võ Ngọc Khánh'),
                subtitle: Text('Name'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildNewPage('Home Page'),
            buildNewPage('Feed Page'),
            buildNewPage('Profile Page'),
            buildNewPage('Settings Page'),
            buildNewPage('Add'),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
            },
            label: const Text('Transparent Appbar')
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

