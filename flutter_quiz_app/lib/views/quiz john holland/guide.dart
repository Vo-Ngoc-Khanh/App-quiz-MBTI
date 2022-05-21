import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/widgets/colors.dart';
import 'package:fluttter_quiz_app/widgets/sizedbox.dart';

import '../../widgets/text.dart';
import 'questions.dart';

class GuideJohnHolland extends StatelessWidget {
  const GuideJohnHolland({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: general,
        title:  textAppBar('Hướng dẫn'),
      ),
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(children: [
                  textBold('TRẮC NGHIỆM ĐỊNH HƯỚNG NGHỀ NGHIỆP HOLLAND'),
                  sizedBoxh10(),
                  textfs18('John L.Holland (1919 – 2008) là tiến sỹ tâm lý học người Mỹ. Mô hình lý thuyết nghề nghiệp của ông đã được sử dụng trong thực tiễn hướng nghiệp tại nhiều nước trên thế giới và được đánh giá rất cao về tính chính xác trong việc khám phá, lựa chọn ngành, nghề phù hợp tính cách, sở thích của bản thân. '),
                  sizedBoxh10(),
                  textfs18('Theo tiến sĩ tâm lý John Holland, có 6 nhóm sở thích nghề nghiệp tương ứng với các loại ngành nghề khác nhau trong xã hội nhưng có quan hệ với nhau. Đó là: (1) Realistic – tạm dịch là nhóm Kỹ thuật, (2) Investigate - nhóm Nghiên cứu, (3) Artistic - nhóm Nghệ thuật, (4) Social - nhóm Xã hội, (5) Enterprising - nhóm Quản lí, (6) Convetional - nhóm nghiệp vụ.'),
                  sizedBoxh10(),
                  Image.asset('assets/images/quizhuongnghiep.jpg'),
                  sizedBoxh10(),
                  textfs18('Bộ trắc nghiệm này giúp các bạn tự phát hiện các kiểu người trội nhất đang tiềm ẩn trong con người mình để tự định hướng con đường nghề nghiệp mà bạn muốn theo đuổi trong tương lai.'),
                  sizedBoxh10(),
                  textBold('Hướng dẫn làm trắc nghiệm :'),
                  sizedBoxh10(),
                  textfs18('- Bước 1: Đọc và tích chọn từng ý trong mỗi bảng dưới đây. Mỗi ô được đánh dấu sẽ tính 1 điểm'),
                  sizedBoxh10(),
                  textfs18('- Bước 2: Cộng tổng điểm của từng bảng và xác định bảng có điểm cao nhất'),
                  sizedBoxh10(),
                  textfs18('- Bước 3: Đối chiếu bảng có điểm cao nhất với kết quả (đó là kiểu người phù hợp với bạn)'),
                  sizedBoxh10(),
                  textfs18('- Bước 4: Xem ngành nghề phù hợp với bạn nhất'),
                  sizedBoxh10(),
                  textfs18('Các ý liệt kê trong mỗi bảng hướng đến các tố chất và năng lực cá nhân. Với mỗi ý sẽ có nhiều mức độ phù hợp, tương ứng với mỗi mức độ phù hợp, sẽ được quy định một điểm số tương ứng. Hãy trung thực với bản thân để kết quả chính xác nhất.'),
                  sizedBoxh10(),
                  sizedBoxh10(),
                  sizedBoxh10(),
                ]),
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            color: general,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    label: const Text("QUAY LẠI"),
                    icon: const Icon(Icons.arrow_back),
                    style:ElevatedButton.styleFrom(
                      primary: general
                    )
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) => const JohnHollandQuiz()),
                        (Route<dynamic> route) => false,
                      );
                     },
                    child: Row(children: const[
                      Text("BẮT ĐẦU "),
                      Icon(Icons.arrow_forward),
                    ]),
                    style:ElevatedButton.styleFrom(
                      primary: general
                    )
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



