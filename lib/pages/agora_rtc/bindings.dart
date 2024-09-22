import 'package:get/get.dart';

import 'controller.dart';

class AgoraRtcBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgoraRtcController>(() => AgoraRtcController());
  }
}
