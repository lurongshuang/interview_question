import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../index.dart';
import 'join_channel_audio.dart';

/// hello
class HelloWidget extends GetView<AgoraRtcController> {
  const HelloWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: JoinChannelAudio(),
    );
  }
}
