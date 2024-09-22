import 'package:get/get.dart';
import 'bindings.dart';
import 'view.dart';

class ImListPageRouters {
  ImListPageRouters._();

  static const String imListPageRouteName = "/im_list_page";
  static final GetPage imListPag = GetPage(
      name: imListPageRouteName,
      page: () => const ImListPage(),
      binding: ImListBinding());

  ///路由跳转
  static Future? toImListPage() =>
      Get.toNamed(imListPageRouteName);
}
