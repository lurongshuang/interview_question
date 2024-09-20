import 'package:get/get_instance/src/get_instance.dart';

/// 校验GetX 实体是否已经被注册

class GIR {
  /// 注册 true
  /// 未注册 false
  static bool isR<T>({String? tag}) {
    try {
      return GetInstance().isRegistered<T>(tag: tag);
    } catch (e) {
      return false;
    }
  }
}
