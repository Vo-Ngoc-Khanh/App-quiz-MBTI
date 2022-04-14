import 'package:flutter/material.dart';
import 'package:fluttter_quiz_app/widgets/sizedbox.dart';
import 'package:fluttter_quiz_app/widgets/text.dart';

class UuDiemNhuocDiem extends StatelessWidget {
  UuDiemNhuocDiem({ Key? key, required this.result }) : super(key: key);
  final String result;

  final uudiemnhuocdiem = [
    {
      'tinhcach':'ENFJ',
      'uudiem' :'- Truyền cảm hứng, động lực, đem lại những điều tốt đẹp nhất cho người khác\n- Rất nhạy đối với những suy nghĩ và động cơ của người khác\n- Khả năng giao tiếp tốt\n- Trung thành và tận tâm – họ muốn có những mối quan hệ bền vững\n- Lúc nào cũng thể hiện và khẳng định tình cảm của mình\n- Khả năng quản lý tài chính tốt\n- Vui vẻ, hài hước, gây ấn tượng sâu sắc, có nghị lực và lạc quan\n- Có thể vượt qua những mối quan hệ tình cảm thất bại (dù họ thường đổ lỗi cho chính mình)\n- Cố gắng đáp ứng những nhu cầu của người khác\n- Cố gắng để hai bên cùng thắng',
      'nhuocdiem' :'- Đặc biệt nhạy cảm với các mâu thuẫn, có xu hướng gạt bỏ và quên hết mọi chuyện như là một cách để tự trốn tránh\n- Có xu hướng hay điều khiển hoặc/và chi phối người khác\n- Có xu hướng yêu thương và bảo vệ thái quá\n- Xu hướng đưa ra lời phê bình với những ý kiến hay thái độ không đúng ý họ\n- Không thực sự chú tâm vào nhu cầu của bản thân\n- Đôi khi không nhận thức được về các chuẩn mực xã hội hay nghi thức giao tiếp xã hội\n- Những hệ thống giá trị được xác định rõ ràng của họ đôi khi quá cứng nhắc trong một số trường hợp\n- Có xu hướng tự đổ lỗi cho bản thân khi mọi việc không như ý muốn, và không tự cho bản thân mình sự khen thưởng khi mọi việc như ý\n- Họ có thể hòa hợp với những thứ mà mọi người thường chấp nhận hoặc mong đợi vì thế họ không thể tự quyết định một việc là "đúng" hay "sai" nếu trái với khuôn mẫu mà môi trường sống của họ định sẵn',
    },
    {
      'tinhcach':'ENFP',
      'uudiem' :'- Rất trung thành và luôn muốn cống hiến.\n- Thấu hiểu suy nghĩ và động cơ của người khác.\n- Kĩ năng giao tiếp tốt.\n- Vui tính, năng động và lạc quan.\n- Dùng nhiệt huyết và cảm hứng của mình giúp người khác đạt được kết quả tốt nhất.\n- Luôn cố gắng đáp ứng nhu cầu của người khác.\n- Rất thân thiện và đáng tin cậy.\n- Luôn có tư duy "cùng thắng".',
      'nhuocdiem' :'- Rất dễ chán.\n- Có xu hướng chìm đắm trong công việc.\n- Không thích làm những việc tẻ nhạt như lau chùi, trả tiền hóa đơn…\n- Nhiệt huyết của họ đôi khi khiến họ trở nên không thực tế.\n- Nhu cầu có một mối quan hệ hoàn hảo có thể khiến họ thay đổi những mối quan hệ của mình thường xuyên.\n- Không thích tranh cãi.\n- Níu kéo một mối quan hệ đã trở nên tồi tệ.\n- Không thích bị phê bình.\n- Khó khăn trong việc la mắng hoặc phạt người khác...',
    },
    {
      'tinhcach':'ENTJ',      
      'uudiem' :'- Ham học hỏi và không ngừng trau dồi kiến thức và phát triển bản thân trong mọi khía cạnh cuộc sống\n- Cực kỳ thẳng thắn và minh bạch\n- Rất nghiêm túc với những lời cam kết của mình\n- Có khả năng chấp nhận những phê bình mang tính xây dựng\n- Biết quản lý tiền bạc\n- Khả năng diễn thuyết trôi chảy\n- Nhiệt huyết và mạnh mẽ\n- Thường có cảm xúc rất mãnh liệt và cũng có những lúc hay đa cảm\n- Rất quan tâm tới những ý tưởng và suy nghĩ của người khác một cách chân thành\n- Tư tưởng công tâm và luôn quan tâm đến việc làm những điều đúng đắn\n- Có thể cắt đứt một mối quan hệ mà không nuối tiếc\n- Có thể chuyển hóa một tình huống xung đột thành một bài học tích cực\n- Có khả năng đưa ra những hình thức kỷ luật\n- Luôn đặt ra một chuẩn mực và kỳ vọng cao (vừa là điểm mạnh và cũng là điểm yếu của các ENTJ)',
      'nhuocdiem' :'- Rất nghiêm khắc và nóng nảy với sự cẩu thả và bất tài\n- Nếu đang không vui, họ có thể trở nên vô cảm, độc đoán và thô lỗ\n- Luôn đặt ra một chuẩn mực và kỳ vọng cao (vừa là điểm mạnh và cũng là điểm yếu của các ENTJ)\n- Dễ rơi vào những cuộc tranh luận "thắng\n-thua"\n- Niềm đam mê những cuộc tranh luận đôi khi khiến họ trở nên thái quá\n- Có xu hướng gây khó dễ và thích đối đầu với người khác\n- Có thể trở nên áp đảo và gây sợ hãi cho người khác\n- Gặp khó khăn trong việc lắng nghe người khác\n- Hay chê bai những ý kiến và thái độ của người khác nếu điều đó không đúng với suy nghĩ của họ\n- Không dễ đồng điệu với cảm xúc và phản ứng của người khác\n- Không nhạy trong việc tán thưởng hoặc nhận ra nhu cầu muốn được tán thưởng của người khác\n- Gặp khó khăn trong việc bày tỏ tình cảm và sự yêu mến, đôi khi điều này gây bất tiện và không thích hợp\n- Luôn muốn nhận lãnh trách nhiệm hơn là chia sẻ trách nhiệm với người khác\n- Có xu hướng kiểm soát mọi thứ\n- Họ sẽ bùng nổ với một cơn giận dữ khủng khiếp nếu đang bị stress nặng\n- Dễ đưa ra những quyết định hấp tấp',
    },
        {
      'tinhcach':'ENTP',
      'uudiem' :'- Là người của ý tưởng, luôn làm việc với một kế hoạch hoặc ý tưởng tổng quát.\n- Nhiệt tình, lạc quan, được nhiều người biết đến.\n- Luôn nghiêm túc trong những mối quan hệ.\n- Có sức thuyết phục cao.\n- Thoải mái, linh hoạt và dễ dàng hòa nhập.\n- Có khả năng giao tiếp tuyệt vời.\n- Rất thích phát triển và nâng cao những mối quan hệ của họ.\n- Có thể tiếp tục bước tiếp sau khi rời bỏ một mối quan hệ. \n- Giỏi kiếm tiền nhưng không giỏi quản lí chúng.',
      'nhuocdiem' :'- Có khuynh hướng đi lệch với kế hoạch và ý tưởng ban đầu.\n- Luôn bị thu hút bởi cái mới và họ hay thay đổi người yêu thường xuyên.\n- Kiếm bao nhiêu tiêu bấy nhiêu, thường không kiểm soát được túi tiền của mình.\n- Tính thích tranh luận là nguyên nhân gây ra tranh cãi.\n- Dù nghiêm túc nhưng họ sẽ từ bỏ những mối quan hệ mà sẽ không có cơ hội phát triển lâu dài.',
    },
    {
      'tinhcach':'ESFJ',
      'uudiem' :'- Thích giúp đỡ người khác.\n- Bản chất của họ là ấm áp, thân thiện và luôn hỗ trợ người khác.\n- Trách nghiệm và thực tế, có thể nhờ họ lo việc chăm sóc hàng ngày.\n- Nỗ lực và cố gắng không ngừng để hoàn thành nghĩa vụ và bổn phận của mình.\n- Luôn nghiêm túc trong mọi mối quan hệ, và tìm kiếm mối quan hệ lâu dài.\n- Có tư tưởng truyền thống và hướng về cội nguồn, họ là người thường tổ chức những sự kiện truyền thống đặc biệt của gia đình.\n- Giỏi quản lí tiền bạc.\n- Lạc quan và được mọi người biết đến, họ thường rất quyến rũ.',      
      'nhuocdiem' :'- Ít chú ý đến những nhu cầu cá nhân, luôn tự hy sinh vì người khác.\n- Không thích xung đột và phê phán.\n- Thường không linh hoạt trước những hay đổi hoặc khi chuyển đến nơi khác sống.\n- Quá coi trọng danh vọng và quá quan tâm đến cách mọi người nhìn mình.\n- Cần nhiều sự khẳng định để cảm thấy hài lòng về bản thân.\n- Khó chấp nhận những mặt tiêu cực của những người thân bên cạnh họ.\n- Gặp khó khăn khi chấp nhận một mối quan hệ tan vỡ, và luôn tự cho đó là lỗi của mình.\n- Có thể có xu hướng làm những điều sai trái để có được thứ họ muốn.',
    },
    {
      'tinhcach':'ESFP',
      'uudiem' :'- Thực tế và có khả năng chăm sóc tốt các nhu cầu hàng ngày.\n- Nhiệt tình và vui vẻ, họ biến mọi thứ trở nên thú vị.\n- Mộc mạc và gợi cảm.\n- Thông minh, dí dỏm, thẳng tính và được lòng mọi người.\n- Linh động và đa dạng, họ hòa đồng cực kì tốt.\n- Có tính nghệ sĩ và sáng tạo, họ thường có một tổ ấm đáng yêu.\n- Luôn hết mình trong từng giây phút.\n- Họ có thể chấm dứt một mối quan hệ tồi mặc dù điều đó không hề dễ dàng.\n- Rộng lượng và tốt bụng.',
      'nhuocdiem' :'- Không quan tâm nhiều đến chính nhu cầu của mình.\n- Thiên về vật chất.\n- Sử dụng tiền bạc một cách lãng phí.\n- Có xu hướng trốn thoát hay bỏ mặc những tình huống mâu thuẫn hơn là đối diện với chúng.\n- Cực kì không thích sự chỉ trích, có xu hướng giữ riêng những điều cực kì riêng tư.\n- Những cam kết suốt cuộc đời có thể là cả một cuộc đấu tranh với họ – họ cần thời gian rất lâu để suy nghĩ về điều này.\n- Luôn hứng thú với những điều mới lạ, họ có thể hay đi tìm những niềm vui mới.\n- Có xu hướng không quan tâm đến sức khỏe của mình, và thậm chí còn đối xử tệ bạc với chính cơ thể của mình.',
    },
        {
      'tinhcach':'ESTJ',
      'uudiem' :'- Nỗ lực hết mình để hoàn thành nhiệm vụ và bổn phận của mình.\n- Kiên định và đáng tin tưởng, họ có thể tăng cao sự an toàn cho gia đình của họ.\n- Thường hăng hái, lạc quan và thân thiện.\n- Rất biết cách sử dụng tiền bạc (mặc dù có chút bảo thủ).\n- Có trách nhiệm trong những công việc ở nhà.\n- Thích thú trong việc tìm giải pháp cho những xung đột hơn là lơ nó đi\n- Không dễ bị ảnh hưởng bởi xung đột hoặc chỉ trích.\n- Có khả năng đứng dậy sau một mối quan hệ đổ vỡ.\n- Rất nghiêm túc trong các cam kết của mình, và mong muốn tìm kiếm những mối quan hệ lâu dài.\n- Có khả năng đưa ra hình thức kỷ luật khi cần thiết.',
      'nhuocdiem' :'- Không dễ đồng cảm với người khác.\n- Có xu hướng lúc nào cũng muốn lãnh đạo người khác.\n- Có xu hướng nghĩ rằng mình luôn luôn đúng.\n- Không chịu nổi sự thiếu hiệu quả và tùy tiện.\n- Có thể vô ý làm tổn thương người khác bằng những câu nói thiếu nhạy cảm.\n- Không giỏi lắm trong việc bộc lộ cảm nghĩ và cảm xúc của mình.\n- Đa số đều cảm thấy không thoải mái với sự thay đổi, cũng như chuyển đến một khu vực hoàn toàn mới.\n- Tư duy theo chủ nghĩa duy vật và giai cấp.',
    },
    {
      'tinhcach':'ESTP',
      'uudiem' :'- Xuất sắc và sáng suốt trong việc giải quyết các vấn đề khẩn cấp.\n- Có thể rất cuốn hút.\n- Hào hứng và vui tính, họ thích làm mọi thứ thật hài hước.\n- Mộc mạc và gợi cảm.\n- Vui tính, khéo léo và được yêu thích.\n- Không cảm thấy bị đe doạ bởi xung đột hay chỉ trích.\n- Sẵn sàng chơi với trẻ em với vai trò của một đứa "trẻ lớn".\n- Có xu hướng chứng tỏ tình yêu bằng những món quà đắt tiền (vừa là ưu điểm và khuyết điểm).',
      'nhuocdiem' :'- Dễ rơi vào trạng thái chán nản.\n- Không có khả năng tự nhiên trong việc đồng cảm với người khác.\n- Có thể vô tình làm tổn thương người khác bằng ngôn ngữ.\n- Sống với hiện tại, không phải là người xây dựng kế hoạch lâu dài\n- Không giỏi bày tỏ cảm xúc và cảm giác.\n- Có thể rơi vào thói quen lờ đi những xung đột hơn là giải quyết nó.\n- Có khả năng quản lý tiền bạc nhưng cũng rất mạo hiểm.\n- Nhanh chóng từ bỏ một mối quan hệ khi cảm thấy chán.\n- Thực hiện những cam kết dài hạn không phải bản tính của họ.',
    },
    {
      'tinhcach':'INFJ',
      'uudiem' :'- Nỗ lực để đạt được mối quan hệ tốt nhất.\n- Ấm áp và đáng tin cậy một cách tự nhiên.\n- Thường có kỹ năng giao tiếp tốt, đặc biệt là kỹ năng viết.\n- Nhạy cảm và quan tâm đến cảm giác của người khác.\n- Luôn đặt ra những chuẩn mực và kì vọng cao cho bản thân và người khác (vừa là ưu điểm và là khuyết điểm).\n- Rất nghiêm túc với những cam kết của mình, và luôn tìm kiếm các mối quan hệ lâu dài.\n- Lắng nghe tốt.\n- Có khả năng tiếp tục tìm kiếm các mối quan hệ khác sau khi kết thúc một mối quan hệ (Một khi đã chắc chắn là mối quan hệ kia đã kết thúc).',
      'nhuocdiem' :'- Cực kì ghét tranh cãi và chỉ trích.\n- Không giỏi sử dụng tiền bạc hay những vật dụng thường ngày.\n- Gặp khó khăn khi rời bỏ một mối quan hệ có chiều hướng xấu đi.\n- Có xu hướng sống khép kín.\n- Luôn đặt ra những chuẩn mực và kì vọng cao cho bản thân và người khác (vừa là ưu điểm và là khuyết điểm).',
    },
    {
      'tinhcach':'INFP',
      'uudiem' :'- Quan tâm và lo lắng cho người khác.\n- Trung thành và cam kết – họ muốn có mối quan hệ bền lâu.\n- Nhạy cảm và mẫn cảm về những gì người khác cảm thấy.\n- Có xu hướng đáp ứng nhu cầu của người khác.\n- Dồi dào tình cảm yêu thương và quan tâm.\n- Nuôi dưỡng, ủng hộ và khuyến khích mối quan hệ.\n- Luôn phấn đấu để đôi bên cùng có lợi.\n- Có thể bày tỏ cảm xúc tốt.\n- Thường dễ nhận biết và thông cảm nhu cầu cần không gian riêng của người khác.\n- Linh hoạt và đa dạng.',
      'nhuocdiem' :'- Có thể phản ứng rất mãnh liệt trong những tình huống căng thẳng.\n- Không muốn người khác khám phá "thế giới riêng" của họ.\n- Có thể có xu hướng nhút nhát và kín đáo.\n- Cực kỳ không thích sự chỉ trích.\n- Cực kỳ không thích xung đột.\n- Cảm thấy khó khăn khi khiển trách hay trừng phạt người khác.\n- Rất cần có sự khen ngợi và khẳng định tích cực.\n- Xu hướng cầu toàn có thể khiến họ không tự khen ngợi bản thân.\n- Cảm thấy khó khăn từ bỏ một mối quan hệ xấu.\n- Có xu hướng dè dặt trong biểu lộ cảm xúc của họ.\n- Có xu hướng tự khiển trách mình về những việc xảy ra và nhận lãnh hoàn toàn trách nhiệm về mình.',
    },
    {
      'tinhcach':'INTJ',
      'uudiem' :'- Tự tin vào bản thân.\n- Không bị đe dọa bởi xung đột và chỉ trích.\n- Nhìn chung rất thông minh và có năng khiếu.\n- Nghiêm túc trong các mối quan hệ và cam kết.\n- Quan tâm đến việc "tối ưu hóa" các mối quan hệ của họ.\n- Có thể kết thúc một mối quan hệ khi biết mối quan hệ này nên dừng lại, mặc dù điều này có thể còn hiện diện trong đầu họ một thời gian sau đó.\n- Là người lắng nghe giỏi.',
      'nhuocdiem' :'- Thường có xu hướng đáp lại các cuộc xung đột bằng logic và lý luận, hơn là mong đợi sự hỗ trợ về mặt tình cảm.\n- Không tự nhiên đồng điệu với cảm xúc của người khác, đôi khi có thể vô tâm.\n- Có xu hướng tin rằng họ luôn đúng.\n- Không tự nhiên khi thể hiện cảm xúc và tạo cảm giác yêu mến.\n- Việc họ liên tục cải thiện tất cả mọi thứ có thể gây ảnh hưởng đến các mối quan hệ.\n- Có xu hướng không sẵn lòng hoặc không chấp nhận sự khiển trách.\n- Có xu hướng giữ kín một phần nào đó về chính bản thân họ.',
    },
    {
      'tinhcach':'INTP',
      'uudiem' :'- Giàu trí tưởng tượng và sáng tạo.\n- Họ rất yêu quý những người xung quanh.\n- Hăng say làm những công việc họ có hứng thú.\n- Thường thoải mái và dễ dãi, luôn chiều theo ý mọi người.\n- Thường không quá đòi hỏi trước những nhu cầu cá nhân căn bản hàng ngày.\n- Thường không lo sợ trước những xung đột hoặc những lời chỉ trích.',
      'nhuocdiem' :'- Không giỏi bày tỏ cảm xúc tự nhiên.\n- Không đồng cảm được với người khác một cách tự nhiên; phản ứng chậm trước những nhu cầu cảm xúc.\n- Không thành thạo những công việc thực tế, ví dụ như quản lí tiền bạc, trừ khi họ làm việc ở những mảng này.\n- Hay có xu hướng hoài nghi và không tin tưởng người khác.\n- Có xu hướng bỏ qua những tình huống xung đột bằng cách lờ chúng đi, hoặc sẽ nổi nóng với chúng trong cơn giận dữ.\n- Gặp khó khăn trong việc rời bỏ những mối quan hệ không tốt đẹp.',
    },
        {
      'tinhcach':'ISFJ',
      'uudiem' :'- Luôn giúp đỡ và muốn làm hài lòng người khác\n- Sẽ cố gắng nỗ lực hết sức để hoàn thành nhiệm vụ và bổn phận của mình\n- Luôn tận tâm, có xu hướng tìm kiếm những mối quan hệ lâu dài\n- Ấm áp, thân thiện, và gần gũi một cách tự nhiên\n- Lắng nghe tốt\n- Thành thạo những công việc thực tế và những nhu cầu cơ bản hàng ngày\n- Có khả năng tổ chức tuyệt vời\n- Giỏi xoay xở tiền bạc (mặc dù vẫn hay dè dặt)',
      'nhuocdiem' :'- Khó khăn khi rời bỏ các mối quan hệ không tốt\n- Không thích thể hiện nhu cầu cá nhân, điều này có thể gây nên sự dồn nén cảm xúc bên trong\n- Gặp khó khăn trong việc rời bỏ môi trường thân quen của mình\n- Không chú ý đến nhu cầu cá nhân\n- Cực kì ghét xung đột và chỉ trích\n- Gặp khó khăn trong việc tiếp tục cuộc sống bình thường sau một mối quan hệ đổ vỡ',
    },
    {
      'tinhcach':'ISFP',
      'uudiem' :'- Linh hoạt và thoải mái, thường chiều theo ý người khác.\n- Nồng nhiệt, thân thiện và quyết đoán.\n- Là người biết lắng nghe.\n- Luôn lạc quan.\n- Thành thạo trong việc giải quyết những chuyện thực tế thường ngày.\n- Luôn tôn trọng không gian riêng tư của người khác.\n- Tình yêu thiên nhiên và ưa chuộng những thứ vận hành tốt khiến cho họ luôn muốn sở hữu một ngôi nhà hấp dẫn và đầy đủ chức năng.\n- Nhạy cảm và thực tế.\n- Có xu hướng thể hiện tình cảm bằng hành động.\n- Nghiêm túc trong các cam kết và tìm kiếm những mối quan hệ lâu dài.',
      'nhuocdiem' :'- Không thành thạo việc quản lí tài chính (hoặc nhiều lĩnh vực khác) trong thời gian lâu dài.\n- Không giỏi thể hiện tình cảm bằng lời nói.\n- Luôn tận hưởng cuộc sống hiện tại, đôi khi người ngoài có thể thấy họ lười biếng và chậm chạp.\n- Không thích xung đột và chỉ trích.\n- Cần có không gian riêng, không thích nó bị xâm phạm.\n- Có thể trở nên quá đa nghi và thực tế.\n- Có xu hướng che đậy cảm xúc và suy nghĩ, trừ khi buộc phải nói ra.',
    },
    {
      'tinhcach':'ISTJ',
      'uudiem' :'- Có khả năng đương đầu với các cuộc xung đột mà không để cảm xúc lấn át.\n- Có khả năng thể hiện những gì họ nghĩ một cách chính xác.\n- Nghiêm túc trong những mối quan hệ.\n- Tôn trọng những lời cam kết.\n- Có khả năng đưa ra lời khiển trách và hình phạt ngay lập tức.\n- Biết lắng nghe.\n- Có khả năng tiếp nhận ý kiến xây dựng tốt.\n- Quản lý tiền bạc tốt (mặc dù có chút bảo thủ).',
      'nhuocdiem' :'- Tôn trọng nguyên tắc một cách cứng nhắc.\n- Không dễ đồng cảm với những gì người khác đang cảm nhận.\n- Thường rơi vào những cuộc tranh luận "thắng\n-thua".\n- Có xu hướng cho rằng mình luôn đúng.\n- Ít đưa ra những lời tán thưởng và công nhận cho những người mà họ yêu quý.',
    },
    {
      'tinhcach':'ISTP',
      'uudiem' :'- Luôn lạc quan và vui vẻ.\n- Biết lắng nghe.\n- Thực tế và thực dụng, họ giải quyết tốt những vấn đề hàng ngày.\n- Thường tự tin.\n- Tôn trọng nhu cầu về không gian riêng tư của người khác.\n- Có khả năng từ bỏ một mối quan hệ dễ dàng một khi nó đã chấm dứt.\n- Không sợ xung đột và chỉ trích.\n- Có khả năng đưa ra hình phạt mặc dù họ không thích làm việc đó.',
      'nhuocdiem' :'- Không dễ đồng điệu với cảm xúc của người khác, đôi lúc họ có thể vô tâm vô ý.\n- Có xu hướng trở nên quá kín đáo và hay thu mình lại.\n- Sống hoàn toàn ở hiện tại, khó có những cam kết lâu dài.\n- Không giỏi thể hiện cảm xúc.\n- Khao khát hành động và sôi nổi, và có thể khuấy động mọi thứ chỉ để tạo ra chúng.\n- Cần rất nhiều không gian riêng và không muốn chúng bị xâm phạm.',
    },
  ];

  int get getResult{
    int id;
    if (result =="ENFJ") {
      id = 0;
    } else if (result =="ENFP") {
      id = 1;
    } else if (result =="ENTJ") {
      id =2;
    } else if (result =="ENTP") {
      id = 3;
    } else if (result =="ESFJ") {
      id = 4;
    }else if (result =="ESFP") {
      id = 5;
    } else if (result =="ESTJ") {
      id = 6;
    } else if (result =="ESTP") {
      id = 7;
    } else if (result =="INFJ") {
      id = 8;
    } else if (result =="INFP") {
      id = 9;
    } else if (result =="INTJ") {
      id = 10;
    } else if (result =="INTP ") {
      id = 11;
    } else if (result =="ISFJ") {
      id = 12;
    }else if (result =="ISFP ") {
      id = 13;
    } else if (result =="ISTJ") {
      id = 14;
    }else {
      id = 15;
    }
    return id;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context,_) {  
            return SingleChildScrollView(
              child: Column(
                children:  [
                  const Text('Ưu điểm',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900),),
                  TextDetail(uudiemnhuocdiem[getResult]['uudiem'] as String),
                  const SizedBoxDetail(),
                  const Text('Nhược điểm',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900),),
                  TextDetail(uudiemnhuocdiem[getResult]['nhuocdiem'] as String),
                ],
              ));
          },
          
        ),
    );
  }
}