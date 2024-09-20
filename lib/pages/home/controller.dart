import 'package:interview_question/app/page_lifecycle/page_lifecycle_controller.dart';
import 'package:interview_question/pages/question_first/routes.dart';
import 'package:interview_question/pages/question_second/routes.dart';

import 'index.dart';

class HomeController extends PageLifecycleController {
  HomeController();

  final state = HomeState();

  ///数据源
  final questionList = ["面试题1 ", "面试题2"];

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }

  itemClick(int index) {
    if (index == 0) {
      QuestionFirstPageRouters.toQuestionFirstPage();
      return;
    }
    if (index == 1) {
      QuestionSecondPageRouters.t0QuestionSecondPage();
      return;
    }
  }

  @override
  String pageLifecycleName() {
    return '/';
  }
}
