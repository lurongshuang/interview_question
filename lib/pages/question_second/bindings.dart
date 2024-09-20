import 'package:get/get.dart';

import 'controller.dart';

class QuestionSecondBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuestionSecondController>(() => QuestionSecondController());
  }
}
