import 'package:get/get.dart';

import 'controller.dart';

class WfAppPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WfAppPageController>(() => WfAppPageController());
  }
}
