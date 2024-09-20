import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/utils/space/space.dart';
import 'index.dart';

/// 页面状态
/// 加载中
/// 加载失败
/// 空数据
/// 加载完成开始渲染
class StatusPage extends StatelessWidget {
  final StateMixin controller;
  final Widget child;
  final VoidCallback? onErr;
  final VoidCallback? onEmpty;
  final String? emptyText;
  final Widget? emptyWidget;
  final Widget? errorWidget;

  const StatusPage(
      {super.key,
      required this.controller,
      required this.child,
      this.onErr,
      this.onEmpty,
      this.emptyText,
      this.emptyWidget,
      this.errorWidget});

  @override
  Widget build(BuildContext context) => controller
      .obx((state) => child.animate().fadeIn(),
          onLoading: Center(
              child: SizedBox(
                  width: 40.r,
                  height: 40.r,
                  child: const CircularProgressIndicator(
                      strokeWidth: 2, color: TCS.primaryColor))),
          onEmpty: emptyWidget ??
              PU
                  .h(
                      h: 60.r,
                      child:
                          StatusEmpty(callback: onEmpty, errorText: emptyText))
                  .animate()
                  .fadeIn(),
          onError: (error) =>
              errorWidget ??
              PU.h(
                  h: 60.r,
                  child: StatusEmpty(
                      callback: onErr, errorText: error ?? "加载出错...")))
      .animate()
      .fadeIn();
}
