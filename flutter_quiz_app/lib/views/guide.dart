import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/widgets/colors.dart';
import 'package:fluttter_quiz_app/widgets/sizedbox.dart';

import '../widgets/text.dart';
import 'questions.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({Key? key}) : super(key: key);

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
                  textBold('Trắc nghiệm tính cách MBTI'),
                  sizedBoxh10(),
                  textfs18('Bài trắc nghiệm này gồm 70 câu hỏi ngắn về chính bản thân bạn.Bạn có 10 phút để làm bài. Thông thường chỉ mất khoảng 7 phút để hoàn thành. '),
                  sizedBoxh10(),
                  textfs18('Sau khi hoàn thành bài trắc nghiệm bạn sẽ nhận được kết quả thuộc 1 trong 16 nhóm tính cách sau :'),
                  sizedBoxh10(),
                  Image.asset('assets/images/mbti.png'),
                  sizedBoxh10(),
                  textBold( 'Lưu ý:'),
                  sizedBoxh10(),
                  textfs18('Kết quả của một trắc nghiệm tâm lý phụ thuộc rất nhiều vào tâm trạng của bạn. Tốt nhất hãy thực hiện nó trong một trạng thái tâm lý bình ổn nhất. Nếu bạn đang quá vui, buồn, phấn khích, bực bội hay đang trong quá trình thay đổi nhận thức thì sẽ không đảm bảo được độ chính xác.'),
                  sizedBoxh10(),
                  textfs18('Trung thực khi trả lời câu hỏi, phân biệt giữa lý tưởng và thực tế. Kết quả của trắc nghiệm hoàn toàn là câu chuyện cá nhân của bạn, đừng để yếu tố bên ngoài tác động đến câu trả lời.'),
                  sizedBoxh10(),
                  textfs18('Chúng ta trưởng thành và thay đổi từng ngày, kết quả trắc nghiệm tất nhiên có thể từ đó mà thay đổi tùy theo nhận thức và thế giới quan của mỗi người. Tốt nhất hãy làm bài kiểm tra nhiều lần và điều độ để có cái nhìn tổng quát và chính xác nhất.'),
                  sizedBoxh10(),
                  textfs18('Kết quả của bài trắc nghiệm MBTI sau đây cung cấp thông tin để bạn có lựa chọn nghề nghiệp thích hợp dựa trên các nhóm tính cách. Mọi dữ liệu đưa ra đều mang tính chất tham khảo, quyết định luôn ở trong tay chúng ta. '),
                  sizedBoxh10(),
                  sizedBoxh10(),
                  textfs18(''),
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
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) => const QuestionPage()),
                        (Route<dynamic> route) => false,
                      );
                    },    
                    label: const Text("BẮT ĐẦU"),
                    icon: const Icon(Icons.arrow_forward),
                    style:ElevatedButton.styleFrom(
                      primary: general
                    )
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



