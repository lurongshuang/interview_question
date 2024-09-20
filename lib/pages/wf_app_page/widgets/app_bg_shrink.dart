import 'package:flutter/material.dart';
import 'package:interview_question/components/app_icon_bar/app_icon_bar.dart';
import 'package:interview_question/components/app_icon_bar/appbar_back_button.dart';
import 'package:interview_question/constants/app_assets.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/utils/text_utils/text_utils.dart';

///注册访客背景占位
class AppBgShrink extends StatelessWidget {
  const AppBgShrink({super.key});

  @override
  Widget build(BuildContext context) {
    bool showCloseButton = Navigator.of(context).canPop();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppIconBar(
            backgroundColorIt: TCS.white,
            leadingWidget: Visibility(
                visible: showCloseButton,
                maintainInteractivity: false,
                child: AppbarBackButton(assetName: AppAssets.icCloseCA))),
        body: Container(
            color: TCS.white,
            alignment: Alignment.center,
            child: SafeArea(
                child: TU.d24("面试题", color: TCS.appBlue, bold: true))));
  }
}
