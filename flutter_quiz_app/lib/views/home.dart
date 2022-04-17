import 'package:flutter/material.dart';
import '../model/json/homejson.dart';
import '../views/drawer.dart';
import '../views/settings.dart';
import '../widgets/text.dart';
import 'guide.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart'; // cách fix : flutter run --no-sound-null-safety

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child:BuildDrawer()
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: textAppBar('Trắc nghiệm MBTI'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => const SettingsPage()));
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            height: 400,
            padding: const EdgeInsets.only(left: 32),
            child : Swiper(
              itemCount:listimg.length,
              itemWidth: MediaQuery.of(context).size.width-2*64,
              layout: SwiperLayout.STACK,
              pagination: const SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                  activeSize: 15,
                  activeColor: Colors.blue,
                  color: Colors.blueGrey,
                )),
              itemBuilder: (context,index){
                return Stack(
                  children: [
                    Image.asset(listimg[index]['img'] as String),
                    Column(
                      children: [
                        const SizedBox( height: 220,),
                        Card(
                        elevation: 8,//shadow of card widget
                        color: Colors.cyanAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            Text(listimg[index]['name'] as String, style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black,fontFamily: 'Times New Roman'),),
                            Text(listimg[index]['text'] as String, style: const TextStyle( fontWeight: FontWeight.w500, fontSize: 14,color: Colors.black,fontFamily: 'Times New Roman'),),
                            const SizedBox(height: 20,),
                            InkWell(
                              child: Row(children: const [
                                Text('Xem thêm ', style: TextStyle( fontFamily: 'Times New Roman', fontSize: 10,color: Colors.black),textAlign: TextAlign.right),
                                Icon(Icons.arrow_forward, size: 10,color: Colors.black,)
                              ],),
                              onTap: () async{
                                if (!await launch(listimg[index]['url'] as String)) throw 'Could not launch ${listimg[index]['url'] as String}';
                              }
                            )
                          ]),
                        ),
                      ),
                      ],
                    ),
                  ],
                );
              },
              )
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.indigo,
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const GuidePage()));
          },
          label: textButton('KHÁM PHÁ TÍNH CÁCH CỦA BẠN NGAY',)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

