import 'package:flutter/services.dart';

import 'dependent/dependent_injection.dart';

class Global {
  ///APP全局初始化
  static Future init() async {
    /// 强制竖屏
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    ///依赖初始化
    await DependentInjection.init();
  }
}
