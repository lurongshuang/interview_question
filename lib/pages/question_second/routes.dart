import 'package:get/get.dart';
import 'bindings.dart';
import 'view.dart';

class QuestionSecondPageRouters {
  QuestionSecondPageRouters._();

  static const String questionSecondPageRouteName = "/question_second_page";
  static final GetPage questionSecondPage = GetPage(
      name: questionSecondPageRouteName,
      page: () => const QuestionSecondPage(),
      binding: QuestionSecondBinding());

  ///路由跳转
  static Future? t0QuestionSecondPage() =>
      Get.toNamed(questionSecondPageRouteName);
}
