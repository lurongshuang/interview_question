import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/constants/app_config.dart';
import 'package:interview_question/constants/sys_font_size.dart';

/// 常用文本封装 设置有默认值 TextUtils
/// Text
/// 字号
/// 标题
/// 标签

class TU {
  ///大尺寸文本
  static displayLarge(String t,
          {Color? color,
          FontWeight? fw,
          double? height,
          bool bold = true,
          TextDecoration? decoration,
          String? fontFamily,
          TextAlign? textAlign}) =>
      text(t,
          style: Theme.of(Get.context!).textTheme.displayLarge?.copyWith(
              color: color,
              fontWeight: fw ?? (bold ? FontWeight.bold : FontWeight.normal),
              height: height,
              decoration: decoration,
              fontFamily: fontFamily),
          textAlign: textAlign);

  ///标题，小字号
  static headlineSmall(String t,
          {Color? color,
          FontWeight? fw,
          double? height,
          bool bold = false,
          TextDecoration? decoration,
          String? fontFamily,
          TextAlign? textAlign}) =>
      text(t,
          style: Theme.of(Get.context!).textTheme.headlineSmall?.copyWith(
              color: color,
              fontWeight: fw ?? (bold ? FontWeight.bold : FontWeight.normal),
              height: height,
              decoration: decoration,
              fontFamily: fontFamily),
          textAlign: textAlign);

  ///标题，大字号
  static headlineLarge(String t,
          {Color? color,
          FontWeight? fw,
          double? height,
          bool bold = false,
          TextDecoration? decoration,
          String? fontFamily,
          TextAlign? textAlign}) =>
      text(t,
          style: Theme.of(Get.context!).textTheme.headlineLarge?.copyWith(
              color: color,
              fontWeight: fw ?? (bold ? FontWeight.bold : FontWeight.normal),
              height: height,
              decoration: decoration),
          fontFamily: fontFamily,
          textAlign: textAlign);

  ///名称，中等字号
  static titleMedium(String t,
          {Color? color,
          FontWeight? fw,
          double? height,
          bool bold = false,
          TextDecoration? decoration,
          String? fontFamily,
          TextAlign? textAlign}) =>
      text(t,
          style: Theme.of(Get.context!).textTheme.titleMedium?.copyWith(
              color: color,
              fontWeight: fw ?? (bold ? FontWeight.bold : FontWeight.normal),
              height: height,
              decoration: decoration),
          fontFamily: fontFamily,
          textAlign: textAlign);

  ///名称，大字号
  static titleLarge(String t,
          {Color? color,
          FontWeight? fw,
          double? height,
          bool bold = false,
          TextDecoration? decoration,
          String? fontFamily,
          TextAlign? textAlign}) =>
      text(t,
          style: Theme.of(Get.context!).textTheme.titleLarge?.copyWith(
              color: color,
              fontWeight: fw ?? (bold ? FontWeight.bold : FontWeight.normal),
              height: height,
              decoration: decoration),
          fontFamily: fontFamily,
          textAlign: textAlign);

  ///名称，小字号
  static titleSmall(String t,
          {Color? color,
          FontWeight? fw,
          double? height,
          bool bold = false,
          TextDecoration? decoration,
          String? fontFamily,
          TextAlign? textAlign}) =>
      text(t,
          style: Theme.of(Get.context!).textTheme.titleSmall?.copyWith(
              color: color,
              fontWeight: fw ?? (bold ? FontWeight.bold : FontWeight.normal),
              height: height,
              decoration: decoration),
          fontFamily: fontFamily,
          textAlign: textAlign);

  ///内容，大字号
  static bodyLarge(String t,
          {Color? color,
          FontWeight? fw,
          double? height,
          bool bold = false,
          TextDecoration? decoration,
          String? fontFamily,
          TextAlign? textAlign}) =>
      text(t,
          style: Theme.of(Get.context!).textTheme.bodyLarge?.copyWith(
              color: color,
              fontWeight: fw ?? (bold ? FontWeight.bold : FontWeight.normal),
              height: height,
              decoration: decoration),
          fontFamily: fontFamily,
          textAlign: textAlign);

  ///内容，小字号
  static bodySmall(String t,
          {Color? color,
          FontWeight? fw,
          double? height,
          bool bold = false,
          TextDecoration? decoration,
          String? fontFamily,
          TextAlign? textAlign}) =>
      text(t,
          style: Theme.of(Get.context!).textTheme.bodySmall?.copyWith(
              color: color,
              fontWeight: fw ?? (bold ? FontWeight.bold : FontWeight.normal),
              height: height,
              decoration: decoration),
          fontFamily: fontFamily,
          textAlign: textAlign);

  ///内容，中等字号
  static bodyMedium(String t,
          {Color? color,
          FontWeight? fw,
          double? height,
          bool bold = false,
          TextDecoration? decoration,
          String? fontFamily,
          TextAlign? textAlign}) =>
      text(t,
          style: Theme.of(Get.context!).textTheme.bodyMedium?.copyWith(
              color: color,
              fontWeight: fw ?? (bold ? FontWeight.bold : FontWeight.normal),
              height: height,
              decoration: decoration),
          fontFamily: fontFamily,
          textAlign: textAlign);

  ///标签，小字号
  static labelSmall(String t,
          {Color? color,
          FontWeight? fw,
          double? height,
          bool bold = false,
          TextDecoration? decoration,
          String? fontFamily,
          TextAlign? textAlign}) =>
      text(t,
          style: Theme.of(Get.context!).textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: fw ?? (bold ? FontWeight.bold : FontWeight.normal),
              height: height,
              decoration: decoration),
          fontFamily: fontFamily,
          textAlign: textAlign);

  /// 默认黑色13
  static d13(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          double? height,
          TextDecoration? decoration,
          TextBaseline? textBaseline,
          TextAlign? textAlign,
          String? fontFamily}) =>
      text(t,
          style: Theme.of(Get.context!).textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: fw ?? (bold ? FontWeight.bold : FontWeight.normal),
              height: height,
              fontSize: SysFontSize.fontSize_13,
              decoration: decoration),
          color: color ?? TCS.black333,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          textAlign: textAlign,
          textBaseline: textBaseline,
          fontFamily: fontFamily);

  /// 默认黑色14
  static d14(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          TextBaseline? textBaseline,
          TextAlign? textAlign,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_14,
          color: color ?? TCS.black333,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          textAlign: textAlign,
          textBaseline: textBaseline,
          fontFamily: fontFamily);

  /// 默认黑色15
  static d15(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          TextBaseline? textBaseline,
          TextAlign? textAlign,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_15,
          color: color ?? TCS.black333,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          textAlign: textAlign,
          textBaseline: textBaseline,
          fontFamily: fontFamily);

  /// 默认黑色16
  static d16(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          TextBaseline? textBaseline,
          TextAlign? textAlign,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_16,
          color: color ?? TCS.black333,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          textAlign: textAlign,
          textBaseline: textBaseline,
          fontFamily: fontFamily);

  /// 默认黑色18
  static d18(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          TextAlign? textAlign,
          bool bold = false,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_18,
          color: color ?? TCS.black333,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          textAlign: textAlign,
          fontFamily: fontFamily);

  /// 默认黑色18
  static d20(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_20,
          color: color ?? TCS.black333,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          fontFamily: fontFamily);

  /// 默认黑色24
  static d24(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          TextBaseline? textBaseline,
          TextAlign? textAlign,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_24,
          color: color ?? TCS.black333,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          textBaseline: textBaseline,
          textAlign: textAlign,
          fontFamily: fontFamily);

  /// 默认黑色26
  static d26(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          TextBaseline? textBaseline,
          TextAlign? textAlign,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_26,
          color: color ?? TCS.black333,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          textBaseline: textBaseline,
          textAlign: textAlign,
          fontFamily: fontFamily);

  /// 默认黑色30
  static d30(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_30,
          color: color ?? TCS.black333,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          fontFamily: fontFamily);

  /// 默认黑色40
  static d40(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_40,
          color: color ?? TCS.black333,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          fontFamily: fontFamily);

  /// 默认白色14
  static w14(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          TextAlign? textAlign,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_14,
          color: color ?? Colors.white,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          textAlign: textAlign,
          fontFamily: fontFamily);

  /// 默认白色15
  static w15(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          TextAlign? textAlign,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_15,
          color: color ?? Colors.white,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          textAlign: textAlign,
          fontFamily: fontFamily);

  /// 默认白色18
  static w18(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          TextAlign? textAlign,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_18,
          color: color ?? Colors.white,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          textAlign: textAlign,
          fontFamily: fontFamily);

  /// 默认白色24
  static w24(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_24,
          color: color ?? Colors.white,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          fontFamily: fontFamily);

  /// 默认白色26
  static w26(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_26,
          color: color ?? Colors.white,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          fontFamily: fontFamily);

  /// 默认白色30
  static w30(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_30,
          color: color ?? Colors.white,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          fontFamily: fontFamily);

  /// 默认灰色10
  static gray10(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_10,
          color: color ?? TCS.gray666,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          fontFamily: fontFamily);

  /// 默认灰色12
  static gray12(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_12,
          color: color ?? TCS.gray666,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          fontFamily: fontFamily);

  /// 默认灰色14
  static gray14(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_14,
          color: color ?? TCS.gray666,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          fontFamily: fontFamily);

  /// 默认灰色15
  static gray15(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_15,
          color: color ?? TCS.gray666,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          fontFamily: fontFamily);

  /// 默认灰色18
  static gray18(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_18,
          color: color ?? TCS.gray666,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          fontFamily: fontFamily);

  /// 默认灰色24
  static gray24(String t,
          {Color? color,
          int? ml,
          TextOverflow? of,
          FontWeight? fw,
          bool bold = false,
          String? fontFamily}) =>
      text(t,
          fs: SysFontSize.fontSize_24,
          color: color ?? TCS.gray666,
          maxLines: ml,
          overflow: of,
          fw: fw,
          bold: bold,
          fontFamily: fontFamily);

  ///带有颜色的文字
  static colourText(String text,
      {double? fs, bool bold = false, FontWeight? fw}) {
    return ShaderMask(
      shaderCallback: (rect) {
        return const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [TCS.blue824f, TCS.blueA77e, TCS.blueA77e, TCS.blue824f],
            stops: [0.2, 0.5, 0.5, 0.8]).createShader(rect);
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: fs ?? SysFontSize.fontSize_15,
          color: Colors.white,
          fontWeight: bold ? FontWeight.w700 : fw,
        ),
      ),
    );
  }

  static text(String text,
          {Color? color = TCS.black000,
          FontWeight? fw,
          bool bold = false,
          double? fs,
          TextStyle? style,
          TextBaseline? textBaseline,
          Function? onClick,
          int? maxLines,
          TextOverflow? overflow,
          double? height,
          TextDecoration? decoration,
          Color? decorationColor,
          StrutStyle? strutStyle,
          TextAlign? textAlign,
          String? fontFamily = AppConfig.regularFont}) =>
      Text(
        text.trimLeft().trimRight(),
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: style ??
            TextStyle(
                height: height,
                fontWeight: bold ? FontWeight.w800 : fw,
                fontSize: fs ?? SysFontSize.fontSize_15,
                color: color,
                textBaseline: textBaseline,
                decoration: decoration,
                decorationColor: decorationColor ?? color,
                fontFamily: fontFamily),
        strutStyle: strutStyle,
      );

  /// 封装Text
  /// callback 回掉
  /// icon 内容
  /// type 0默认文本 1图在左侧  2图在右侧
  /// spacing 图文之间空白距离
  static textWidget(
    String t, {
    Color color = TCS.black333,
    FontWeight? fw,
    double? fs,
    TextStyle? style,
    TextBaseline? textBaseline,
    Function? onClick,
    Widget? widget,
    int type = 0,
    double spacing = 0,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    if (type != 0) assert(widget != null, 'type == 1 widget必穿参数');

    // 构建Text
    Text isText = text(t,
        maxLines: maxLines,
        overflow: overflow,
        textBaseline: TextBaseline.alphabetic,
        style: style,
        color: color,
        fs: fs ?? SysFontSize.fontSize_15);

    // 构建List
    List<Widget> isRowList = [isText];
    if (type == 1) {
      isRowList.insertAll(
          0, [widget ?? const SizedBox.shrink(), SizedBox(width: spacing)]);
    } else if (type == 2) {
      isRowList.addAll(
          [SizedBox(width: spacing), widget ?? const SizedBox.shrink()]);
    }

    return Row(mainAxisSize: MainAxisSize.min, children: isRowList);
  }
}
