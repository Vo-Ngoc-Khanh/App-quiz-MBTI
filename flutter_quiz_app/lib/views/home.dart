import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/views/settings.dart';
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
  final listimg = [
    {'img': 'assets/images/enfj.png','name': 'Tính cách ENFJ','text': 'Người cho đi',
      'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-enfj.html'
    },
    {'img': 'assets/images/enfp.png','name': 'Tính cách ENFP','text': 'Người truyền cảm hứng',
      'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-enfp.html'
    },
    {'img': 'assets/images/entj.png','name': 'Tính cách ENTJ','text': 'Người điều hành',
      'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-entj.html'
    },
    {'img': 'assets/images/entp.png','name': 'Tính cách ENTP','text': 'Người nhìn xa',
      'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-entp.html'
    },
    {'img': 'assets/images/esfj.png', 'name': 'Tính cách ESFJ','text': 'Người quan tâm',
      'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-esfj.html'
    },
    {'img': 'assets/images/esfp.png','name': 'Tính cách ESTJ','text': 'Người trình diễn',
      'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-esfp.html'
    },
    {'img': 'assets/images/estj.png','name': 'Tính cách ESTJ','text': 'Người giám hộ',
      'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-estj.html'
    },
    {'img': 'assets/images/estp.png','name': 'Tính cách ESTJ','text': 'Người thực thi',
      'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-estp.html'
    },
    {'img': 'assets/images/infj.png','name': 'Tính cách INFJ','text': 'Người che chở',
      'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-infj.html'
    },
    {'img': 'assets/images/infp.png','name': 'Tính cách INFP','text': 'Người lý tưởng hóa',
      'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-infb.html'
    },
    {'img': 'assets/images/intj.png','name': 'Tính cách INTJ','text': 'Nhà khoa học',
     'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-intj.html'
    },
    {'img': 'assets/images/intp.png','name': 'Tính cách INTP','text': 'Nhà tư duy',
     'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-intp.html'
    },
    {'img': 'assets/images/isfj.png','name': 'Tính cách ISFJ','text': 'Người nuôi dưỡng',
     'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-isfj.html'
    },
    {'img': 'assets/images/isfp.png','name': 'Tính cách ISFP','text': 'Người nghệ sĩ',
     'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-isfp.html'
    },
    {'img': 'assets/images/istj.png','name': 'Tính cách ISTJ','text': 'Người trách nhiệm',
     'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-istj.html'
    },
    {'img': 'assets/images/istp.png','name': 'Tính cách ISTP','text': 'Nhà kỹ thuật',
     'url' : 'https://www.topcv.vn/mbti/nhom-tinh-cach-istp.html'
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(backgroundColor: Colors.indigo),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Trắc nghiệm MBTI'),
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
                      const SizedBox( height: 250,),
                      Card(
                      elevation: 8,//shadow of card widget
                      color: Colors.cyanAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Text(listimg[index]['name'] as String, style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),),
                          Text(listimg[index]['text'] as String, style: const TextStyle( fontWeight: FontWeight.w500, fontSize: 14,color: Colors.black),),
                          const SizedBox(height: 20,),
                          InkWell(
                            child: Row(children: const [
                              Text('Xem thêm ', style: TextStyle( fontWeight: FontWeight.normal, fontSize: 10,color: Colors.black),textAlign: TextAlign.right),
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
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.indigo,
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const GuidePage()));
          },
          label: const Text('KHÁM PHÁ TÍNH CÁCH CỦA BẠN NGAY',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900),)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

