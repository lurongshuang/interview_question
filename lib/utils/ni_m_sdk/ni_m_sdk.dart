import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:nim_core/nim_core.dart';
import 'package:netease_corekit_im/im_kit_client.dart';

class NiMSdk {
  NiMSdk._internal();

  static final _instance = NiMSdk._internal();

  static NiMSdk getInstance() {
    return _instance;
  }

  void initSDK() {
    final NIMSDKOptions options;
    if (Platform.isAndroid) {
      options =
          NIMAndroidSDKOptions(appKey: 'de01522b1697fd79450609ddaa8960f6');
    } else if (Platform.isIOS) {
      options = NIMIOSSDKOptions(appKey: 'de01522b1697fd79450609ddaa8960f6');
    } else {
      return;
    }
    NimCore.instance.initialize(options).then((result) {
      if (result.isSuccess) {
        /// 初始化成功
        debugPrint("NiMSdk 初始化成功");
        initUser();
      } else {
        /// 初始化失败
        debugPrint("NiMSdk 初始化失败");
      }
    });
  }

  void initUser() async {
    bool res = await IMKitClient.init("de01522b1697fd79450609ddaa8960f6");
    debugPrint("$res");

    /// 开始监听事件
    final subscription =
        NimCore.instance.authService.authStatus.listen((event) {
      if (event is NIMKickOutByOtherClientEvent) {
        /// 监听到被踢事件
        debugPrint("$event");
      } else {
        /// 监听到其他事件
        debugPrint("$event");
      }
    });

    /// 不再监听时，需要取消监听，否则造成内存泄漏
    /// subscription.cancel();

    // IMKitClient.loginIM(NIMLoginInfo(account: "004", token: "34b1f7231a962c801bc9137f63a6a97c"))
    IMKitClient.loginIM(NIMLoginInfo(account: "005", token: "b98935b983531f71c347a35ae85c8298"))
        .then((success) {
      if (success) {
        //登录成功
        debugPrint("NiMSdk 登录成功");
      } else {
        //登录失败
        debugPrint("NiMSdk 登录失败");
      }
    });
  }
}
