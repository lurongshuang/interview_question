import 'package:get/get.dart';

import 'controller.dart';

class QuestionFirstBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuestionFirstController>(() => QuestionFirstController());
  }
}
