import 'dart:async';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class AgoraRtc {
  AgoraRtc._internal();

  static final _instance = AgoraRtc._internal();

  static AgoraRtc getInstance() {
    return _instance;
  }

  late RtcEngine _engine;

  void initSDK() async {
    // 创建 RtcEngine
    _engine = createAgoraRtcEngine();

// 初始化 RtcEngine，设置频道场景为 channelProfileLiveBroadcasting（直播场景）
    await _engine.initialize(const RtcEngineContext(
        appId: "f6c990cda12f433ba3f1bde7d5cff65a",
        channelProfile: ChannelProfileType.channelProfileLiveBroadcasting));
  }
}
