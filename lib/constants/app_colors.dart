import 'package:flutter/material.dart';

/// 通用颜色 ThemeColors
/// 文本
/// 色块
class TCS {
  //////////////// 颜色规范 ////////////////
  static const Color white = Colors.white;
  static final Color white02 = white.withOpacity(0.2);
  static final Color white03 = white.withOpacity(0.3);
  static final Color white04 = white.withOpacity(0.4);
  static final Color white05 = white.withOpacity(0.5);
  static final Color white07 = white.withOpacity(0.7);

  /// 主题蓝色
  static const Color blueA77e = Color(0xFFab81ff);
  static const Color blue824f = Color(0xFF8153f4);
  static const Color blue24C = Color(0xFF24C5CF);
  static const Color blue86B = Color(0xFF86BFF9);
  static const Color blue825 = Color(0xFF8252EA);
  static const Color blue6DA = Color(0xFF6DA9E4);
  static const Color blue99C = Color(0xFF99C3EC);

  ///黄色
  static const Color yellowE8F = Color(0xFFE8FF3D);
  static const Color yellowF5E = Color(0xFFF5E445);
  static const Color yellowCF7 = Color(0xFFFcf7c7);
  static const Color yellowCF7_03 = Color.fromRGBO(245, 228, 69, 0.3);


  ///灰色
  static const Color gray999 = Color(0xFF999999);
  static const Color black333 = Color(0xFF333333);
  static const Color black4e4 = Color(0xFF4E4E4E);
  static const Color black000 = Color(0xFF000000);
  static const Color black0B0 = Color(0xFF0B0B0B);



  static const Color gray666 = Color(0xFF666666);
  static const Color grayb2b = Color(0xFFb2b2b2);
  static const Color gray9e9 = Color(0xFF9E9E9E);
  static const Color grayf7f = Color(0xFFf7f7f7);
  static const Color graycac = Color(0xFFCACACA);



  ///绿色
  static const Color wxGreen = Color(0xff07C160);
  static const Color green1EC = Color(0xff1ECAA1);
  static const Color greenBBE = Color(0xffbbefe3);


  ///红色
  static const Color redFF5 = Color(0xFFFF5B5B);
  static const Color redFF0 = Color(0xFFFF0000);
  static const Color redF36 = Color(0xFFF36767);
  static const Color greenD54 = Color(0xFFBDCD54);


  static const Color textBody = black333;
  static const Color textTitle = black000;
  static const Color darkBackground = black0B0;
  static const Color textLabelDark = black4e4;

  // static const Color primaryColor = Color(0xFF8252EA);
  static const Color primaryColor = green1EC;
  static final Color primaryColor_01 = primaryColor.withOpacity(0.1);
  static final Color primaryColor_02 = primaryColor.withOpacity(0.2);
  static final Color primaryColor_03 = primaryColor.withOpacity(0.3);
  static final Color primaryColor_05 = primaryColor.withOpacity(0.5);
  static final Color primaryColor_07 = primaryColor.withOpacity(0.7);

  ///APP蓝
  static const Color appBlue = blue6DA;

  ///APP黄
  static const Color appYellow = yellowF5E;

  ///APP绿
  static const Color appGreen = green1EC;

  static const MaterialColor deepPurple = MaterialColor(
    0xFF1ECAA1,
    <int, Color>{
      50: Color(0xFFdef6f0),
      100: Color(0xFFade8d7),
      200: Color(0xFF73dabd),
      300: Color(0xFF1ecaa2),
      400: Color(0xFF00bd8e),
      500: Color(0XFF00ae7c),
      600: Color(0xFF00a06f),
      700: Color(0xFF008f5f),
      800: Color(0xFF007f51),
      900: Color(0xFF006135),
    },
  );
}
