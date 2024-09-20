import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppConfig {
  static const String appName = "面试题";

  //// 屏幕尺寸
  ///  宽 375
  ///  高 812
  static const double screenWidth = 750 / 2;
  static const double screenHeight = 1624 / 2;
  static Size designSize = const Size(screenWidth, screenHeight);

  /// 字体
  static const String regularFont = "PingFangSCRegular";

  ///隐私政策
  static const String appPrivacy = "";

  ///用户协议
  static const String appUserAgreement = "";

  ///bugLy 崩溃收集
  static const bugLyAndroidId = "";
  static const bugLyIosId = "";

  /// 本地化
  static List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate
  ];

  /// 支持语言环境
  static List<Locale> supportedLocales = [const Locale('zh', 'CN')];

}
