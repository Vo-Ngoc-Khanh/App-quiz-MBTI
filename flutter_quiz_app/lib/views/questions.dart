import 'package:flutter/material.dart';

import 'alertdialog.dart';
import 'result.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int indexAnwser = 0;

  final questions = [
    {
      "questionText": "1. Trong một buổi tiệc, bạn sẽ:",
      "answerText": [
        {
          "text": "Nói chuyện với tất cả mọi người, kể cả người lạ",
          "case": "E"
        },
        {"text": "Nói chuyện với những người bạn quen", "case": "I"},
      ],
    },
    {
      "questionText": "2. Xu hướng nào trong bạn mạnh hơn?",
      "answerText": [
        {"text": "Hướng tới những điều thực tế và cụ thể", "case": "S"},
        {"text": "Hướng tới các dự đoán trong tương lai", "case": "N"},
      ],
    },
    {
      "questionText": "3. Tình huống nào khiến bạn cảm thấy tệ hơn?",
      "answerText": [
        {"text": "Mọi thứ mông lung, không rõ ràng", "case": "S"},
        {"text": "Nhàm chán, đơn điệu", "case": "N"},
      ],
    },
    {
      "questionText": "4. Bạn thấy ấn tượng bởi:",
      "answerText": [
        {"text": "Nguyên lý, nguyên tắc", "case": "T"},
        {"text": "Cảm xúc, tình cảm", "case": "F"},
      ],
    },
    {
      "questionText": "5. Bạn có xu hướng nghiêng về:",
      "answerText": [
        {"text": "Những gì có tính thuyết phục", "case": "T"},
        {"text": "Những gì cảm động", "case": "F"},
      ],
    },
    {
      "questionText": "6. Bạn thích làm việc:",
      "answerText": [
        {"text": "Theo thời hạn (deadline)", "case": "J"},
        {"text": "Tùy hứng", "case": "P"},
      ],
    },
    {
      "questionText": "7. Khi lựa chọn, bạn thường:",
      "answerText": [
        {"text": "Khá cẩn thận, xem xét kĩ lưỡng", "case": "J"},
        {"text": "Tin vào cảm giác lúc lựa chọn", "case": "P"},
      ],
    },
    {
      "questionText": "8. Tại các buổi gặp mặt, bạn sẽ:",
      "answerText": [
        {"text": "Ở lại đến cuối buổi, càng lúc càng phấn khích", "case": "E"},
        {"text": "Ra về sớm và cảm thấy mệt", "case": "I"},
      ],
    },
    {
      "questionText": "9. Tuýp người nào sẽ thu hút bạn hơn?",
      "answerText": [
        {"text": "Người có đầu óc xét đoán, biết điều", "case": "S"},
        {"text": "Người có khả năng tưởng tượng phong phú", "case": "N"},
      ],
    },
    {
      "questionText": "10. Bạn hứng thú hơn với:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "11. Khi đánh giá người khác, bạn thường:",
      "answerText": [
        {"text": "Dựa trên các quy định, luật lệ", "case": "S"},
        {"text": "Dựa trên hoàn cảnh cụ thể", "case": "N"},
      ],
    },
    {
      "questionText": "12. Khi tiếp cận người khác, bạn nghiêng về:",
      "answerText": [
        {"text": "Tiếp cận khách quan", "case": "S"},
        {"text": "Tiếp cận cá nhân", "case": "N"},
      ],
    },
    {
      "questionText": "13. Phong cách đúng với bạn hơn?",
      "answerText": [
        {"text": "Đúng giờ", "case": "S"},
        {"text": "Nhàn nhã, thoải mái", "case": "N"},
      ],
    },
    {
      "questionText": "14. Bạn bồn chồn khi có những việc:",
      "answerText": [
        {"text": "Chưa hoàn thiện", "case": "S"},
        {"text": "Đã hoàn thiện", "case": "N"},
      ],
    },
    {
      "questionText": "15. Bạn là người:",
      "answerText": [
        {
          "text": "Luôn nắm bắt kịp thời thông tin về các vấn đề của mọi người",
          "case": "S"
        },
        {"text": "Thường biết thông tin sau", "case": "N"},
      ],
    },
    {
      "questionText":
          "16. Với các công việc thông thường, bạn nghiêng về cách:",
      "answerText": [
        {"text": "Làm theo cách thông thường", "case": "S"},
        {"text": "Làm theo cách của riêng mình", "case": "N"},
      ],
    },
    {
      "questionText": "17. Theo bạn, các nhà văn nên:",
      "answerText": [
        {
          "text":
              "Viết những gì họ nghĩ, và nghĩ những gì họ viết, một cách rõ ràng",
          "case": "S"
        },
        {"text": "Diễn đạt sự việc bằng cách so sánh, liên tưởng", "case": "N"},
      ],
    },
    {
      "questionText": "18. Điều gì lôi cuốn bạn hơn:",
      "answerText": [
        {"text": "Sự nhất quán về tư duy, suy nghĩ", "case": "S"},
        {"text": "Sự hòa hợp trong các mối quan hệ con người", "case": "N"},
      ],
    },
    {
      "questionText": "19. Bạn cảm thấy thoải mái hơn khi đưa ra nhận xét:",
      "answerText": [
        {"text": "Một cách logic", "case": "S"},
        {"text": "Một cách có ý nghĩa, có giá trị", "case": "N"},
      ],
    },
    {
      "questionText": "20. Bạn thích những điều:",
      "answerText": [
        {"text": "Được định trước", "case": "S"},
        {"text": "Chưa được quyết định", "case": "N"},
      ],
    },
    {
      "questionText": "21. Bạn là người:",
      "answerText": [
        {"text": "Nghiêm túc và quyết đoán", "case": "S"},
        {"text": "Dễ tính, thoải mái", "case": "N"},
      ],
    },
    {
      "questionText": "22. Khi nói chuyện điện thoại, bạn:",
      "answerText": [
        {"text": "Hiếm khi băn khoăn đến những điều mình sẽ nói", "case": "S"},
        {"text": "Thường chuẩn bị trước những điều mình sẽ nói", "case": "N"},
      ],
    },
    {
      "questionText": "23. Theo bạn, 'các sự việc, sự kiện':",
      "answerText": [
        {"text": "Bản thân nó giải thích cho chính nó", "case": "S"},
        {
          "text": "Nó là bằng chứng giải thích cho các quy tắc, quy luật",
          "case": "N"
        },
      ],
    },
    {
      "questionText": "24. Những người có tầm nhìn xa:",
      "answerText": [
        {
          "text": "Ở mức độ nào đó, họ thường gây khó chịu cho người khác",
          "case": "S"
        },
        {"text": "Khá thú vị", "case": "N"},
      ],
    },
    {
      "questionText": "25. Bạn là người:",
      "answerText": [
        {"text": "Có cái đầu lạnh", "case": "S"},
        {"text": "Có trái tim ấm", "case": "N"},
      ],
    },
    {
      "questionText": "26. Điều nào tồi tệ hơn:",
      "answerText": [
        {"text": "Không công bằng", "case": "S"},
        {"text": "Tàn nhẫn", "case": "N"},
      ],
    },
    {
      "questionText": "27. Mọi người nên để các sự kiện xảy ra:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "28. Bạn cảm thấy thoải mái hơn khi:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "29. Trong công ty, bạn là người:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "30. Những logic được mọi người chấp nhận, bạn sẽ:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "31. Trẻ em thường không:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "32. Khi đưa ra các quyết định, bạn thiên về:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "33. Bạn nghiêng về tính cách:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "34. Khả năng nào đáng khâm phục hơn:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "35. Bạn đề cao:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "36. Đối mặt với những vấn đề mới, bạn thường",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "37. Thường thì bạn là:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "38. Bạn thường có xu hướng xem người khác:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "39. Bạn cảm thấy thoải mái hơn khi:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "40. Cái đầu hay trái tim chi phối bạn nhiều hơn",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "41. Bạn thích công việc:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "42. Bạn có xu hướng tìm kiếm những điều:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "43. Bạn thích kiểu nào hơn:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "44. Bạn thường dựa vào:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText":
          "45. Bạn hứng thú hơn với:45. Bạn hứng thú với việc gì hơn:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "46. Bạn thích được khen là:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "47. Bạn thấy điều nào ở mình giá trị hơn:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "48. Bạn thường thích:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "49. Bạn thấy thoải mái hơn:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "50. Bạn có thấy mình:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "51. Bạn có xu hướng tin tưởng vào",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "52. Bạn cho mình là người như thế nào?",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "53. Theo bạn ai sẽ là người đáng được khen ngợi:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "54. Bạn có xu hướng nhiều hơn về:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "55. Mọi việc sẽ hợp lý hơn nếu:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "56. Mọi việc:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "57. Khi chuông điện thoại reo, bạn sẽ:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "58. Bạn đánh giá cao điều gì trong mình hơn:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "59. Bạn sẽ chú tâm hơn đến:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "60. Bạn không thích những người:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "61. Bạn sẽ đánh giá mình là người thế nào?",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "62. Tình huống nào sẽ lôi cuốn bạn:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "63. Bạn là người có xu hướng nào hơn:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "64. Bạn có xu hướng:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "65. Khi viết, bạn thích:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "66. Điều gì khó thực hiện hơn:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "67. Bạn mong ước mình sẽ có thêm:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "68. Điều gì sẽ là lỗi lớn hơn:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "69. Bạn sẽ thích:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
    {
      "questionText": "70. Bạn thiên về xu hướng hành động:",
      "answerText": [
        {"text": "Những việc thực tế xảy ra", "case": "S"},
        {"text": "Những việc có khả năng xảy ra", "case": "N"},
      ],
    },
  ];

  var send = [
    {'group': '1', 'click': false},
    {'group': '2', 'click': false},
    {'group': '3', 'click': false},
    {'group': '4', 'click': false},
    {'group': '5', 'click': false},
    {'group': '6', 'click': false},
    {'group': '7', 'click': false},
    {'group': '8', 'click': false},
    {'group': '9', 'click': false},
    {'group': '10', 'click': false},
    {'group': '11', 'click': false},
    {'group': '12', 'click': false},
    {'group': '13', 'click': false},
    {'group': '14', 'click': false},
    {'group': '15', 'click': false},
    {'group': '16', 'click': false},
    {'group': '17', 'click': false},
    {'group': '18', 'click': false},
    {'group': '19', 'click': false},
    {'group': '20', 'click': false},
    {'group': '21', 'click': false},
    {'group': '22', 'click': false},
    {'group': '23', 'click': false},
    {'group': '24', 'click': false},
    {'group': '25', 'click': false},
    {'group': '26', 'click': false},
    {'group': '27', 'click': false},
    {'group': '28', 'click': false},
    {'group': '29', 'click': false},
    {'group': '30', 'click': false},
    {'group': '31', 'click': false},
    {'group': '32', 'click': false},
    {'group': '33', 'click': false},
    {'group': '34', 'click': false},
    {'group': '35', 'click': false},
    {'group': '36', 'click': false},
    {'group': '37', 'click': false},
    {'group': '38', 'click': false},
    {'group': '39', 'click': false},
    {'group': '40', 'click': false},
    {'group': '41', 'click': false},
    {'group': '42', 'click': false},
    {'group': '43', 'click': false},
    {'group': '44', 'click': false},
    {'group': '45', 'click': false},
    {'group': '46', 'click': false},
    {'group': '47', 'click': false},
    {'group': '48', 'click': false},
    {'group': '49', 'click': false},
    {'group': '50', 'click': false},
    {'group': '51', 'click': false},
    {'group': '52', 'click': false},
    {'group': '53', 'click': false},
    {'group': '54', 'click': false},
    {'group': '55', 'click': false},
    {'group': '56', 'click': false},
    {'group': '57', 'click': false},
    {'group': '58', 'click': false},
    {'group': '59', 'click': false},
    {'group': '60', 'click': false},
    {'group': '61', 'click': false},
    {'group': '62', 'click': false},
    {'group': '63', 'click': false},
    {'group': '64', 'click': false},
    {'group': '65', 'click': false},
    {'group': '66', 'click': false},
    {'group': '67', 'click': false},
    {'group': '68', 'click': false},
    {'group': '69', 'click': false},
    {'group': '70', 'click': false},
  ];

  String result1 = '';
  String result2 = '';
  String result3 = '';
  String result4 = '';
  String result = '';
  var E = 0;
  var I = 0;
  var S = 0;
  var N = 0;
  var T = 0;
  var F = 0;
  var J = 0;
  var P = 0;

  void _chooseAnswer(String choose, bool click) {
    if (click == false) {
      if (choose == "E") {
        E++;
      } else if (choose == "I") {
        I++;
      } else if (choose == "S") {
        S++;
      } else if (choose == "N") {
        N++;
      } else if (choose == "T") {
        T++;
      } else if (choose == "F") {
        F++;
      } else if (choose == "J") {
        J++;
      } else if (choose == "P") {
        P++;
      }
    } else {
      if (choose == "E") {
        I--;
        E++;
      } else if (choose == "I") {
        E--;
        I++;
      } else if (choose == "S") {
        N--;
        S++;
      } else if (choose == "N") {
        S--;
        N++;
      } else if (choose == "T") {
        F--;
        T++;
      } else if (choose == "F") {
        T--;
        F++;
      } else if (choose == "J") {
        P--;
        J++;
      } else if (choose == "P") {
        J--;
        P++;
      }
    }
  }

  String resultQuiz() {
    if (E >= I) {
      result1 = 'E';
    } else if (E < I) {
      result1 = 'I';
    }
    if (S >= N) {
      result2 = 'S';
    } else if (S < N) {
      result2 = 'N';
    }
    if (T >= F) {
      result3 = 'T';
    } else if (T < F) {
      result3 = 'F';
    }
    if (J >= P) {
      result4 = 'J';
    } else if (J < P) {
      result4 = 'P';
    }
    result = result1 + result2 + result3 + result4;
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trắc nghiệm tính cách'),
        leading: IconButton(
            onPressed: () {
              showAlertDialog(context);
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          Row(
            children: [
              const Text(
                'Câu : ',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                '$indexAnwser',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              ),
              const Text(
                '/70',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
            ],
          )
        ],
      ),
      body: Card(
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  _Question(
                    questions[index]['questionText'] as String,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ...(questions[index]['answerText']
                          as List<Map<String, dynamic>>)
                      .map((answer) {
                    return _RadioButton(
                        title: answer['text'],
                        value: answer['case'],
                        group: send[index]['group'] as String,
                        onChanged: (newValue) {
                          setState(() {
                            if (send[index]['click'] == false) {
                              indexAnwser++;
                            }
                            send[index]['group'] = newValue!;
                            _chooseAnswer(
                              answer['case'] as String,
                              send[index]['click'] as bool,
                            );
                            send[index]['click'] = true;
                          });
                        });
                  }).toList(),
                ],
              ),
            );
          },
          itemCount: questions.length,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
      floatingActionButton: Visibility(
        visible: indexAnwser == 70 ? true : false,
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultPage(result: resultQuiz())),
              (Route<dynamic> route) => false,
            );
          },
          label: const Text('Hoàn thành'),
          icon: const Icon(Icons.check),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _Question(String questionText) {
    return Text(
      questionText,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _RadioButton(
      {required String title,
      required String value,
      required Function(String?)? onChanged,
      required String group}) {
    return RadioListTile(
      value: value,
      groupValue: group,
      onChanged: onChanged,
      title: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
