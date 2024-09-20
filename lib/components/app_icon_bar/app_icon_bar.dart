import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/constants/sys_font_size.dart';

import 'appbar_back_button.dart';

///AppBar
class AppIconBar extends AppBar {
  final Widget? leadingWidget;

  ///阴影
  final double? elevationNum;

  ///背景
  final Color? backgroundColorIt;

  ///返回操作
  final VoidCallback? back;

  ///右侧选项
  final List<Widget>? actionList;

  ///标题
  final String? titleText;

  ///标题颜色
  final Color? titleColor;

  ///返回图标
  final String? assetName;

  ///返回按钮颜色
  final Color? backButtonColor;

  final SystemUiOverlayStyle? systemOverlayStyleIt;

  AppIconBar(
      {super.key,
      this.leadingWidget,
      this.elevationNum,
      this.backgroundColorIt,
      this.back,
      this.actionList,
      this.titleText,
      this.titleColor,
      this.assetName,
      this.backButtonColor,
      this.systemOverlayStyleIt})
      : super(
            title: titleText != null
                ? AutoSizeText(
                    titleText,
                    maxLines: 1,
                    style: TextStyle(
                        color: titleColor ?? TCS.black000,
                        fontWeight: FontWeight.w600,
                        fontSize: SysFontSize.fontSize_18),
                  )
                : null,
            elevation: elevationNum ?? 0,
            backgroundColor: backgroundColorIt ?? Colors.white,
            scrolledUnderElevation: 0,
            leading: leadingWidget ??
                AppbarBackButton(
                    back: back, assetName: assetName, color: backButtonColor),
            actions: actionList,
            centerTitle: true,
            systemOverlayStyle: systemOverlayStyleIt);
}
