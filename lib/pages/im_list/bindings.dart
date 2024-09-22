import 'package:get/get.dart';

import 'controller.dart';

class ImListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImListController>(() => ImListController());
  }
}
