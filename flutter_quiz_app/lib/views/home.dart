import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/views/settings.dart';
import 'guide.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart'; // cách fix : flutter run --no-sound-null-safety

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final listimg = [
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
      drawer: const Drawer(backgroundColor: Colors.indigo),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 500,
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
                      const SizedBox( height: 280,),
                      Card(
                      elevation: 8,//shadow of card widget
                      color: Colors.cyanAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Text(listimg[index]['name'] as String, style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 18),),
                          Text(listimg[index]['text'] as String, style: const TextStyle( fontWeight: FontWeight.w500, fontSize: 14),),
                          const SizedBox(height: 20,),
                          InkWell(
                            child: Row(children: const [
                              Text('Xem thêm', style: TextStyle( fontWeight: FontWeight.normal, fontSize: 10),textAlign: TextAlign.left,),
                              Icon(Icons.arrow_forward, size: 10,)
                            ],),
                            onTap: (){},
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

