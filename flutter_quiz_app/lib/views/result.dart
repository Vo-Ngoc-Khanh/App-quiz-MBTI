import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/widgets/colors.dart';
import 'home.dart';
import 'package:url_launcher/url_launcher.dart';


class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.result}) : super(key: key);
  final String result;

  String get getURL{
    String url;
    if (result =="ENFJ") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-enfj.html';
    } else if (result =="ENFP") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-enfp.html';
    } else if (result =="ENTJ") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-entj.html';
    } else if (result =="ENTP") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-entp.html';
    } else if (result =="ESFJ") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-esfj.html';
    }else if (result =="ESFP") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-esfp.html';
    } else if (result =="ESTJ") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-estj.html';
    } else if (result =="ESTP") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-estp.html';
    } else if (result =="INFJ") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-infj.html';
    } else if (result =="INFP") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-infb.html';
    } else if (result =="INTJ") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-intj.html';
    } else if (result =="INTP ") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-intp.html';
    } else if (result =="ISFJ") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-isfj.html';
    }else if (result =="ISFP ") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-isfp.html';
    } else if (result =="ISTJ") {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-istj.html';
    }else {
      url = 'https://www.topcv.vn/mbti/nhom-tinh-cach-istp.html';
    }
    return url;
  }
  void _launchURL() async {
    if (!await launch(getURL)) throw 'Could not launch $getURL';
  }

  String get getIMG{
    String url;
    if (result =="ENFJ") {
      url = 'assets/images/enfj.png';
    } else if (result =="ENFP") {
      url = 'assets/images/enfp.png';
    } else if (result =="ENTJ") {
      url = 'assets/images/entj.png';
    } else if (result =="ENTP") {
      url = 'assets/images/entp.png';
    } else if (result =="ESFJ") {
      url = 'assets/images/esfj.png';
    }else if (result =="ESFP") {
      url = 'assets/images/esfp.png';
    } else if (result =="ESTJ") {
      url = 'assets/images/estj.png';
    } else if (result =="ESTP") {
      url = 'assets/images/estp.png';
    } else if (result =="INFJ") {
      url = 'assets/images/infj.png';
    } else if (result =="INFP") {
      url = 'assets/images/infp.png';
    } else if (result =="INTJ") {
      url = 'assets/images/intj.png';
    } else if (result =="INTP ") {
      url = 'assets/images/intp.png';
    } else if (result =="ISFJ") {
      url = 'assets/images/isfj.png';
    }else if (result =="ISFP ") {
      url = 'assets/images/isfp.png';
    } else if (result =="ISTJ") {
      url = 'assets/images/istj.png';
    }else {
      url = 'assets/images/istp.png';
    }
    return url;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: general,
        title: const Text('Kết quả'),
        leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                    (Route<dynamic> route) => false,
              );
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            icon: const Icon(Icons.download_rounded),
            tooltip: 'Lưu về máy',
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.share),
            tooltip: 'Chia sẻ',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: primaryTextColor,
          alignment: Alignment.center,
          child: ListView(
            children: [
              sizedBox(10.0),
              Text('         TÍNH CÁCH CỦA BẠN THUỘC NHÓM : $result',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.red[400]),),
              sizedBox(50.0),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/mbti-result-btns-2.png'),
                  Image.asset(getIMG, height: 270),
                ],
              ),
              sizedBox(50.0),
              TextButton(
                onPressed: _launchURL,
                child: const Text('Click để xem chi tiết hơn')
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget sizedBox(double height) {
  return SizedBox(
    height: height,
  );
}



