import 'package:get/get.dart';
import 'bindings.dart';
import 'view.dart';

class AgoraRtcPageRouters {
  AgoraRtcPageRouters._();

  static const String agoraRtcPageRouteName = "/agora_rtc_page";
  static final GetPage agoraRtcPage = GetPage(
      name: agoraRtcPageRouteName,
      page: () => const AgoraRtcPage(),
      binding: AgoraRtcBinding());

  ///路由跳转
  static Future? toAgoraRtcPage() => Get.toNamed(agoraRtcPageRouteName);
}
