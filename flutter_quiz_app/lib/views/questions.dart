import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/views/alertdialog.dart';
import 'package:fluttter_quiz_app/views/result.dart';
import 'package:fluttter_quiz_app/widgets/colors.dart';

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
      "questionText": "2. Xu hướng nào trong bạn mạnh hơn ?",
      "answerText": [
        {"text": "Hướng tới những điều thực tế và cụ thể", "case": "S"},
        {"text": "Hướng tới các dự đoán trong tương lai", "case": "N"},
      ],
    },
    {
      "questionText": "3. Tình huống nào khiến bạn cảm thấy tệ hơn ?",
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
      "questionText": "9. Tuýp người nào sẽ thu hút bạn hơn ?",
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
       {"text": "A. Dựa trên các quy định, luật lệ","case" : "T"},
       {"text": "B. Dựa trên hoàn cảnh cụ thể","case" : "F"},
      ],
    },
    {
      "questionText": "12. Khi tiếp cận người khác, bạn nghiêng về:",
      "answerText": [
          {"text": "A. Tiếp cận khách quan","case" : "T"},
          {"text": "B. Tiếp cận cá nhân","case" : "F"},
      ],
    },
    {
      "questionText": "13. Phong cách đúng với bạn hơn?",
      "answerText": [
          {"text": "A. Đúng giờ","case" : "J"},
          {"text": "B. Nhàn nhã, thoải mái","case" : "P"},
      ],
    },
    {
      "questionText": "14. Bạn bồn chồn khi có những việc:",
      "answerText": [
          {"text": "A. Chưa hoàn thiện","case" : "J"},
          {"text": "B. Đã hoàn thiện","case" : "P"},
      ],
    },
    {
      "questionText": "15. Bạn là người:",
      "answerText": [
          {"text": "A. Luôn nắm bắt kịp thời thông tin về các vấn đề của mọi người","case" : "E"},
          {"text": "B. Thường biết thông tin sau","case" : "I"},
      ],
    },
    {
      "questionText": "16. Với các công việc thông thường, bạn nghiêng về cách:",
      "answerText": [
          {"text": "A. Làm theo cách thông thường","case" : "S"},
          {"text": "B. Làm theo cách của riêng mình","case" : "N"},
      ],
    },
    {
      "questionText": "17. Theo bạn, các nhà văn nên:",
      "answerText": [
          {"text": "A. Viết những gì họ nghĩ, và nghĩ những gì họ viết, một cách rõ ràng","case" : "S"},
          {"text": "B. Diễn đạt sự việc bằng cách so sánh, liên tưởng","case" : "N"},
      ],
    },
    {
      "questionText": "18. Điều gì lôi cuốn bạn hơn:",
      "answerText": [
          {"text": "A. Sự nhất quán về tư duy, suy nghĩ","case" : "T"},
          {"text": "B. Sự hòa hợp trong các mối quan hệ con người","case" : "F"},
      ],
    },
    {
      "questionText": "19. Bạn cảm thấy thoải mái hơn khi đưa ra nhận xét:",
      "answerText": [
          {"text": "A. Một cách logic","case" : "T"},
          {"text": "B. Một cách có ý nghĩa, có giá trị","case" : "F"},
      ],
    },
    {
      "questionText": "20. Bạn thích những điều:",
      "answerText": [
          {"text": "A. Được định trước","case" : "J"},
          {"text": "B. Chưa được quyết định","case" : "P"},
      ],
    },
    {
      "questionText": "21. Bạn là người:",
      "answerText": [
          {"text": "A. Nghiêm túc và quyết đoán","case" : "J"},
          {"text": "B. Dễ tính, thoải mái","case" : "P"},
      ],
    },
    {
      "questionText": "22. Khi nói chuyện điện thoại, bạn:",
      "answerText": [
          {"text": "A. Hiếm khi băn khoăn đến những điều mình sẽ nói","case" : "E"},
          {"text": "B. Thường chuẩn bị trước những điều mình sẽ nói","case" : "I"},
      ],
    },
    {
      "questionText": "23. Theo bạn,các sự việc, sự kiện:",
      "answerText": [
          {"text": "A. Bản thân nó giải thích cho chính nó","case" : "S"},
          {"text": "B. Nó là bằng chứng giải thích cho các quy tắc, quy luật","case" : "N"},
      ],
    },
    {
      "questionText": "24. Những người có tầm nhìn xa:",
      "answerText": [
          {"text": "A. Ở mức độ nào đó, họ thường gây khó chịu cho người khác","case" : "S"},
          {"text": "B. Khá thú vị","case" : "N"},
      ],
    },
    {
      "questionText": "25. Bạn là người:",
      "answerText": [
          {"text": "A. Có cái đầu lạnh","case" : "T"},
          {"text": "B. Có trái tim ấm","case" : "F"},
      ],
    },
    {
      "questionText": "26. Điều nào tồi tệ hơn:",
      "answerText": [
          {"text": "A. Không công bằng","case" : "T"},
          {"text": "B. Tàn nhẫn","case" : "F"},
      ],
    },
    {
      "questionText": "27. Mọi người nên để các sự kiện xảy ra:",
      "answerText": [
          {"text": "A. Theo sự lựa chọn và cân nhắc kĩ lưỡng","case" : "J"},
          {"text": "B. Diễn ra ngẫu nhiên, tự nhiên","case" : "P"},
      ],
    },
    {
      "questionText": "28. Bạn cảm thấy thoải mái hơn khi:",
      "answerText": [
          {"text": "A. Đã mua một thứ gì đó","case" : "J"},
          {"text": "B. Có khả năng và có sự lựa chọn để mua","case" : "P"},
      ],
    },
    {
      "questionText": "29. Trong công ty, bạn là người:",
      "answerText": [
          {"text": "A. Khởi xướng các câu chuyện","case" : "E"},
          {"text": "B. Đợi người khác khởi xướng để nói chuyện","case" : "I"},
      ],
    },
    {
      "questionText": "30. Những logic được mọi người chấp nhận, bạn sẽ:",
      "answerText": [
          {"text": "A. Tin tưởng vào những điều đó và không nghi ngờ","case" : "S"},
          {"text": "B. Xem xét lại tính đúng đắn của những điều đó","case" : "N"},
      ],
    },
    {
      "questionText": "31. Trẻ em thường không:",
      "answerText": [
          {"text": "A. Tự mình phát huy hết năng lực","case" : "S"},
          {"text": "B. Thỏa mãn hết trí tưởng tượng của mình","case" : "N"},
      ],
    },
    {
      "questionText": "32. Khi đưa ra các quyết định, bạn thiên về:",
      "answerText": [
          {"text": "A. Các tiêu chuẩn, quy định","case" : "T"},
          {"text": "B. Cảm xúc, cảm nhận","case" : "F"},
      ],
    },
    {
      "questionText": "33. Bạn nghiêng về tính cách:",
      "answerText": [
          {"text": "A. Chắc chắn hơn là nhẹ nhàng","case" : "T"},
          {"text": "B. Nhẹ nhàng hơn là chắc chắn","case" : "F"},
      ],
    },
    {
      "questionText": "34. Khả năng nào đáng khâm phục hơn:",
      "answerText": [
          {"text": "A. Khả năng tổ chức và làm việc có phương pháp","case" : "J"},
          {"text": "B. Khả năng thích ứng và xoay xở trước mọi tình huống","case" : "P"},
      ],
    },
    {
      "questionText": "35. Bạn đề cao:",
      "answerText": [
          {"text": "A. Sự chắc chắn","case" : "J"},
          {"text": "B. Sự cởi mở","case" : "P"},
      ],
    },
    {
      "questionText": "36. Đối mặt với những vấn đề mới, bạn thường",
      "answerText": [
          {"text": "A. Thấy kích thích và hào hứng","case" : "E"},
          {"text": "B. Cảm thấy mệt mỏi","case" : "I"},
      ],
    },
    {
      "questionText": "37. Thường thì bạn là:",
      "answerText": [
          {"text": "A. Người thực tế","case" : "S"},
          {"text": "B. Người có khả năng tưởng tượng phong phú","case" : "N"},
      ],
    },
    {
      "questionText": "38. Bạn thường có xu hướng xem người khác:",
      "answerText": [
          {"text": "A. Có thể làm được việc gì hữu ích","case" : "S"},
          {"text": "B. Xem người khác sẽ nghĩ và cảm nhận như thế nào","case" : "N"},
      ],
    },
    {
      "questionText": "39. Bạn cảm thấy thoải mái hơn khi:",
      "answerText": [
          {"text": "A. Thảo luận một vân đề kĩ lưỡng, triệt để","case" : "T"},
          {"text": "B. Đạt được thỏa thuận, sự nhất trí về vấn đề","case" : "F"},
      ],
    },
    {
      "questionText": "40. Cái đầu hay trái tim chi phối bạn nhiều hơn",
      "answerText": [
          {"text": "A. Cái đầu","case" : "T"},
          {"text": "B. Trái tim","case" : "F"},
      ],
    },
    {
      "questionText": "41. Bạn thích công việc:",
      "answerText": [
          {"text": "A. Được giao trọn gói, làm xong hết rồi bàn giao","case" : "J"},
          {"text": "B. Công việc làm hàng ngày, theo lịch","case" : "P"},
      ],
    },
    {
      "questionText": "42. Bạn có xu hướng tìm kiếm những điều:",
      "answerText": [
          {"text": "A. Theo trật tự, thứ tự","case" : "J"},
          {"text": "B. Ngẫu nhiên","case" : "P"},
      ],
    },
    {
      "questionText": "43. Bạn thích kiểu nào hơn:",
      "answerText": [
          {"text": "A. Nhiều bạn bè với mức độ tiếp xúc ngắn gọn","case" : "E"},
          {"text": "B. Một vài bạn thân với mức độ tiếp xúc sâu","case" : "I"},
      ],
    },
    {
      "questionText": "44. Bạn thường dựa vào:",
      "answerText": [
          {"text": "A. Sự kiện, thông tin","case" : "S"},
          {"text": "B. Nguyên lí, nguyên tắc","case" : "N"},
      ],
    },
    {
      "questionText": "45. Bạn hứng thú với việc gì hơn:",
      "answerText": [
          {"text": "A. Sản xuất và phân phối","case" : "S"},
          {"text": "B. Thiết kế, nghiên cứu","case" : "N"},
      ],
    },
    {
      "questionText": "46. Bạn thích được khen là:",
      "answerText": [
          {"text": "A. Một người có logic rất tốt","case" : "T"},
          {"text": "B. Một người rất tình cảm, tinh tế","case" : "F"},
      ],
    },
    {
      "questionText": "47. Bạn thấy điều nào ở mình giá trị hơn:",
      "answerText": [
          {"text": "A. Kiên định, vững vàng","case" : "T"},
          {"text": "B. Toàn tâm, cống hiến","case" : "F"},
      ],
    },
    {
      "questionText": "48. Bạn thường thích:",
      "answerText": [
          {"text": "A. Một tuyên bố cuối cùng, không thay đổi","case" : "J"},
          {"text": "B. Một tuyên bố dự kiến, ban đầu","case" : "P"},
      ],
    },
    {
      "questionText": "49. Bạn thấy thoải mái hơn:",
      "answerText": [
          {"text": "A. Trước khi đưa ra quyết định","case" : "J"},
          {"text": "B. Sau khi đưa ra quyết định","case" : "P"},
      ],
    },
    {
      "questionText": "50. Bạn có thấy mình:",
      "answerText": [
          {"text": "A. Dễ dàng bắt chuyện với người lạ","case" : "E"},
          {"text": "B. Có ít điều để nói với người lạ","case" : "I"},
      ],
    },
    {
      "questionText": "51. Bạn có xu hướng tin tưởng vào",
      "answerText": [
          {"text": "A. Kinh nghiệm của mình","case" : "S"},
          {"text": "B. Linh cảm của mình","case" : "N"},
      ],
    },
    {
      "questionText": "52. Bạn cho mình là người như thế nào?",
      "answerText": [
          {"text": "A. Là người thực tế hơn là khéo léo, mưu trí","case" : "S"},
          {"text": "B. Là người khéo léo, mưu trí hơn là thực tế","case" : "N"},
      ],
    },
    {
      "questionText": "53. Theo bạn ai sẽ là người đáng được khen ngợi:",
      "answerText": [
          {"text": "A. Một người giàu lý trí","case" : "T"},
          {"text": "B. Một người giàu cảm xúc","case" : "F"},
      ],
    },
    {
      "questionText": "54. Bạn có xu hướng nhiều hơn về:",
      "answerText": [
          {"text": "A. Công bằng, vô tư","case" : "T"},
          {"text": "B. Thông cảm, đồng cảm","case" : "F"},
      ],
    },
    {
      "questionText": "55. Mọi việc sẽ hợp lý hơn nếu:",
      "answerText": [
          {"text": "A. Được chuẩn bị trước","case" : "J"},
          {"text": "B. Diễn ra tự nhiên","case" : "P"},
      ],
    },
    {
      "questionText": "56. Mọi việc:",
      "answerText": [
          {"text": "A. Có thể nói chuyện để giải quyết được","case" : "J"},
          {"text": "B. Nên để mọi việc diễn ra ngẫu nhiên theo điều kiện hoàn cảnh","case" : "P"},
      ],
    },
    {
      "questionText": "57. Khi chuông điện thoại reo, bạn sẽ:",
      "answerText": [
          {"text": "A. Là người đầu tiên nhấc máy để nghe","case" : "E"},
          {"text": "B. Hi vọng có người khác sẽ nhấc máy","case" : "I"},
      ],
    },
    {
      "questionText": "58. Bạn đánh giá cao điều gì trong mình hơn:",
      "answerText": [
          {"text": "A. Cảm nhận tốt các yếu tố thực tế","case" : "S"},
          {"text": "B. Trí tưởng tượng phong phú, rực rỡ","case" : "N"},
      ],
    },
    {
      "questionText": "59. Bạn sẽ chú tâm hơn đến:",
      "answerText": [
          {"text": "A. Các nguyên tắc, nguyên lý cơ bản","case" : "S"},
          {"text": "B. Các ngụ ý, hàm ý, ẩn ý","case" : "N"},
      ],
    },
    {
      "questionText": "60. Bạn không thích những người:",
      "answerText": [
          {"text": "A. Quá nồng nhiệt, thiết tha","case" : "T"},
          {"text": "B. Quá khách quan","case" : "F"},
      ],
    },
    {
      "questionText": "61. Bạn sẽ đánh giá mình là người thế nào?",
      "answerText": [
          {"text": "A. Thiết thực, ít bị chi phối bởi tình cảm","case" : "T"},
          {"text": "B. Từ tâm, đa cảm","case" : "F"},
      ],
    },
    {
      "questionText": "62. Tình huống nào sẽ lôi cuốn bạn:",
      "answerText": [
          {"text": "A. Tình huống rõ ràng, có kế hoạch","case" : "J"},
          {"text": "B. Tình huống không xác định, không có kế hoạch","case" : "P"},
      ],
    },
    {
      "questionText": "63. Bạn là người có xu hướng nào hơn:",
      "answerText": [
          {"text": "A. Theo thói quen","case" : "J"},
          {"text": "B. Hay thay đổi","case" : "P"},
      ],
    },
    {
      "questionText": "64. Bạn có xu hướng:",
      "answerText": [
          {"text": "A. Là người dễ tiếp cận","case" : "E"},
          {"text": "B. Ở mức độ nào đó là người kín đáo","case" : "I"},
      ],
    },
    {
      "questionText": "65. Khi viết, bạn thích:",
      "answerText": [
          {"text": "A. Viết theo hướng văn chương hơn","case" : "S"},
          {"text": "B. Viết theo số liệu, dữ liệu hơn","case" : "N"},
      ],
    },
    {
      "questionText": "66. Điều gì khó thực hiện hơn:",
      "answerText": [
          {"text": "A. Hiểu và chia sẻ với người khác","case" : "S"},
          {"text": "B. Sử dụng người khác","case" : "N"},
      ],
    },
    {
      "questionText": "67. Bạn mong ước mình sẽ có thêm:",
      "answerText": [
          {"text": "A. Lí trí suy xét rõ ràng","case" : "T"},
          {"text": "B. Tình thương, lòng trắc ẩn sâu sắc","case" : "F"},
      ],
    },
    {
      "questionText": "68. Điều gì sẽ là lỗi lớn hơn:",
      "answerText": [
          {"text": "A. Hành động bừa bãi, không cân nhắc","case" : "T"},
          {"text": "B. Hành động chỉ trích, phê phán","case" : "F"},
      ],
    },
    {
      "questionText": "69. Bạn sẽ thích:",
      "answerText": [
          {"text": "A. Sự kiện có kế hoạch trước","case" : "J"},
          {"text": "B. Sự kiện không có kế hoạch trước","case" : "P"},
      ],
    },
    {
      "questionText": "70. Bạn thiên về xu hướng hành động:",
      "answerText": [
          {"text": "A. Cân nhắc thận trọng","case" : "J"},
          {"text": "B. Tự nhiên, tự phát","case" : "P"},
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
    result =  result1 + result2 + result3 +result4;
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: general,
        title: const Text('Trắc nghiệm tính cách'),
        leading: IconButton(
            onPressed: () {
              showAlertDialog(context);
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          Row(
            children: [
              const Text('Câu : ', style: TextStyle(fontSize: 18,),),
              Text('$indexAnwser',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              ),
              const Text('/70', style: TextStyle(fontSize: 18,),),
              const SizedBox(width: 50,),
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
                  const SizedBox(height: 10,),
                  Text(questions[index]['questionText'] as String,style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5,),
                  ...(questions[index]['answerText'] as List<Map<String, dynamic>>).map((answer) {
                    return _RadioButton(
                        title: answer['text'],
                        value: answer['case'],
                        group: send[index]['group'] as String,
                        onChanged: (newValue) {
                          setState(() {
                            if (send[index]['click'] == false) {indexAnwser++;}
                            send[index]['group'] = newValue!;
                             _chooseAnswer(answer['case'] as String, send[index]['click'] as bool);
                            send[index]['click'] = true;
                          });
                        });
                  }).toList(),
                ],
              ),
            );
          },
          itemCount: questions.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
      ),
      floatingActionButton: Visibility(
        visible: indexAnwser == 70 ? true : false,
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (context) => ResultPage(result: resultQuiz())),
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
  Widget _RadioButton({required String title, required String value, required Function(String?)? onChanged, required String group})
  {
    return RadioListTile(
      value: value,
      groupValue: group,
      onChanged: onChanged,
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
