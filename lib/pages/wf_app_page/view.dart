import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_question/pages/home/view.dart';

import 'index.dart';
import 'widgets/splash_screen_widget.dart';

class WfAppPagePage extends GetView<WfAppPageController> {
  const WfAppPagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WfAppPageController>(builder: (_) {
      return const SplashScreenWidget(child: HomePage()
          // Obx(() {
          //   bool appInit = true;
          //   bool initError = false;
          //
          //   ///... 初始化
          //   ///先判断初始化是否出现问题
          //   // if (!appInit) {
          //   //   return initError ? const AppErrorWidget() : const AppBgShrink();
          //   // }
          //   return const HomePage();
          //   // else if (reaLoadAllPage) {
          //   //   return const ReaLoadAllPage(child: AppBgShrink());
          //   // } else if (isAuthenticated) {
          //   //   return HomePage();
          //   // } else {
          //   //   return ResistGuest(child: AppBgShrink());
          //   // }
          // })
          );
    });
  }
}
