import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:interview_question/constants/app_colors.dart';

import 'app_bg_shrink.dart';

///启动屏幕
class SplashScreenWidget extends StatefulWidget {
  final Widget child;

  const SplashScreenWidget({required this.child, super.key});

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  final showSplash = true.obs;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(systemNavigationBarColor: TCS.white));
    Future.delayed(const Duration(milliseconds: 1500), () {
      showSplash(false);
    });
    // if (GetPlatform.isAndroid) {
    //   Future.delayed(const Duration(milliseconds: 1500), () {
    //     showSplash(false);
    //   });
    // } else {
    //   showSplash(false);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TCS.white,
        body: Obx(() => showSplash.value
            ? const AppBgShrink()
                .animate()
                .fadeIn(duration: const Duration(milliseconds: 1000))
            : widget.child));
  }
}
