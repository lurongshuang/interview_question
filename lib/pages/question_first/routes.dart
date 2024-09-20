import 'package:get/get.dart';
import 'bindings.dart';
import 'view.dart';

class QuestionFirstPageRouters {
  QuestionFirstPageRouters._();

  static const String questionFirstPageRouteName = "/question_first_page";
  static final GetPage questionFirstPage = GetPage(
      name: questionFirstPageRouteName,
      page: () => const QuestionFirstPage(),
      binding: QuestionFirstBinding());

  ///路由跳转
  static Future? toQuestionFirstPage() =>
      Get.toNamed(questionFirstPageRouteName);
}
