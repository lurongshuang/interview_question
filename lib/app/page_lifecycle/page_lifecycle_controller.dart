import 'package:get/get.dart';

import 'page_lifecycle_mixin.dart';

///封装GetxController 带 页面生命周期
abstract class PageLifecycleController extends GetxController
    with PageLifecycleMixin {
  @override
  void onInit() {
    addToPageLifecycle();
    super.onInit();
  }

  @override
  void onClose() {
    removeToPageLifecycle();
    super.onClose();
  }
}
