import 'package:flutter/material.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/constants/app_config.dart';
import 'package:interview_question/constants/sys_font_size.dart';

///APP主题配置
final ThemeData appThemeData = ThemeData(
    primaryColor: TCS.deepPurple,
    colorScheme: ColorScheme.fromSeed(seedColor: TCS.primaryColor),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: TCS.graycac),
        titleTextStyle: TextStyle(
            fontSize: SysFontSize.fontSize_20,
            color: TCS.black000,
            fontFamily: AppConfig.regularFont)),
    fontFamily: AppConfig.regularFont,
    textTheme: TextTheme(
        displayLarge: TextStyle(
            fontSize: SysFontSize.fontSize_72, fontWeight: FontWeight.bold),
        headlineSmall:
            TextStyle(fontSize: SysFontSize.fontSize_16, color: TCS.textBody),
        headlineLarge:
            TextStyle(fontSize: SysFontSize.fontSize_40, color: TCS.textTitle),
        titleMedium:
            TextStyle(fontSize: SysFontSize.fontSize_18, color: TCS.textTitle),
        titleLarge:
            TextStyle(fontSize: SysFontSize.fontSize_24, color: TCS.textTitle),
        titleSmall:
            TextStyle(fontSize: SysFontSize.fontSize_14, color: TCS.textTitle),
        bodyLarge:
            TextStyle(fontSize: SysFontSize.fontSize_18, color: TCS.textBody),
        bodySmall:
            TextStyle(fontSize: SysFontSize.fontSize_12, color: TCS.textBody),
        bodyMedium:
            TextStyle(fontSize: SysFontSize.fontSize_14, color: TCS.textBody),
        labelSmall: TextStyle(
            fontSize: SysFontSize.fontSize_12, color: TCS.textLabelDark),
        labelMedium: TextStyle(
            fontSize: SysFontSize.fontSize_14, color: TCS.textLabelDark),
        labelLarge: TextStyle(
            fontSize: SysFontSize.fontSize_16, color: TCS.textLabelDark)),
    scrollbarTheme: ScrollbarThemeData(
        interactive: true,
        radius: const Radius.circular(10.0),
        thickness: MaterialStateProperty.all(4.0),
        minThumbLength: 100,
        thumbColor: MaterialStateProperty.all(TCS.gray999)),
    tabBarTheme: const TabBarTheme(
        dividerHeight: 0, indicatorSize: TabBarIndicatorSize.tab),
    inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: TCS.primaryColor)),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: TCS.primaryColor))));
