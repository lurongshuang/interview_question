import 'package:get/get.dart';
import 'package:interview_question/pages/agora_rtc/routes.dart';
import 'package:interview_question/pages/im_list/routes.dart';
import 'package:interview_question/pages/question_first/routes.dart';
import 'package:interview_question/pages/question_second/routes.dart';

///路由声明
class AppPages {
  static final pages = <GetPage>[
    /// 面试题1
    QuestionFirstPageRouters.questionFirstPage,

    ///面试题2
    QuestionSecondPageRouters.questionSecondPage,

    ///聊天列表
    ImListPageRouters.imListPag,

    ///RTC
    AgoraRtcPageRouters.agoraRtcPage
  ];
}
