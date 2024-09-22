import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:interview_question/utils/text_utils/text_utils.dart';
import 'package:permission_handler/permission_handler.dart';

/// JoinChannelAudio Example
class JoinChannelAudio extends StatefulWidget {
  /// Construct the [JoinChannelAudio]
  const JoinChannelAudio({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<JoinChannelAudio> {
  late final RtcEngine _engine;
  String channelId = "test";
  final String _selectedUid = '';
  bool isJoined = false,
      openMicrophone = true,
      muteMicrophone = false,
      muteAllRemoteAudio = false,
      enableSpeakerphone = true,
      playEffect = false;
  bool _isSetDefaultAudioRouteToSpeakerphone = false;
  bool _enableInEarMonitoring = false;
  double _recordingVolume = 100,
      _playbackVolume = 100,
      _inEarMonitoringVolume = 100;
  late TextEditingController _controller;
  late final TextEditingController _selectedUidController;
  ChannelProfileType _channelProfileType =
      ChannelProfileType.channelProfileLiveBroadcasting;
  late final RtcEngineEventHandler _rtcEngineEventHandler;

  // 填写声网控制台中获取的 App ID
  final appId = "f6c990cda12f433ba3f1bde7d5cff65a";

// 填写声网控制台中生成的临时 Token
  final token =
      "007eJxTYNA0+x9bzsjtzXb2xb3t7hUBp54ulZ3tv675bk1ewcUlOXMUGNLMki0tDZJTEg2N0kyMjZMSjdMMk1JSzVNMk9PSzEwTm86/T2sIZGRoqNrKyMgAgSA+C0NJanEJAwMApl8h2g==";

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: channelId);
    _selectedUidController = TextEditingController(text: _selectedUid);
    _initEngine();
  }

  @override
  void dispose() {
    super.dispose();
    _dispose();
  }

  Future<void> _dispose() async {
    _engine.unregisterEventHandler(_rtcEngineEventHandler);
    await _engine.leaveChannel();
    await _engine.release();
  }

  Future<void> _initEngine() async {
    _engine = createAgoraRtcEngine();
    await _engine.initialize(RtcEngineContext(
      appId: appId,
    ));

    _rtcEngineEventHandler = RtcEngineEventHandler(
      onError: (ErrorCodeType err, String msg) {
        debugPrint('[onError] err: $err, msg: $msg');
      },
      onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
        debugPrint(
            '[onJoinChannelSuccess] connection: ${connection.toJson()} elapsed: $elapsed');
        setState(() {
          isJoined = true;
        });
      },
      onRemoteAudioStateChanged: (RtcConnection connection, int remoteUid,
          RemoteAudioState state, RemoteAudioStateReason reason, int elapsed) {
        debugPrint(
            '[onRemoteAudioStateChanged] connection: ${connection.toJson()} remoteUid: $remoteUid state: $state reason: $reason elapsed: $elapsed');
      },
      onLeaveChannel: (RtcConnection connection, RtcStats stats) {
        debugPrint(
            '[onLeaveChannel] connection: ${connection.toJson()} stats: ${stats.toJson()}');
        setState(() {
          isJoined = false;
        });
      },
      onAudioRoutingChanged: (routing) {
        debugPrint('[onAudioRoutingChanged] routing: $routing');
      },
    );

    _engine.registerEventHandler(_rtcEngineEventHandler);

    await _engine.enableAudio();
    await _engine.setClientRole(role: ClientRoleType.clientRoleBroadcaster);
    await _engine.setAudioProfile(
      profile: AudioProfileType.audioProfileDefault,
      scenario: AudioScenarioType.audioScenarioGameStreaming,
    );
  }

  _joinChannel() async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      await Permission.microphone.request();
    }

    await _engine.joinChannel(
        token: token,
        channelId: _controller.text,
        uid: 0,
        options: ChannelMediaOptions(
          channelProfile: _channelProfileType,
          clientRoleType: ClientRoleType.clientRoleBroadcaster,
        ));
  }

  _leaveChannel() async {
    await _engine.leaveChannel();
    setState(() {
      isJoined = false;
      openMicrophone = true;
      muteMicrophone = false;
      muteAllRemoteAudio = false;
      enableSpeakerphone = true;
      playEffect = false;
      _enableInEarMonitoring = false;
      _recordingVolume = 100;
      _playbackVolume = 100;
      _inEarMonitoringVolume = 100;
    });
  }

  _switchMicrophone() async {
    // await await _engine.muteLocalAudioStream(!openMicrophone);
    await _engine.enableLocalAudio(!openMicrophone);
    setState(() {
      openMicrophone = !openMicrophone;
    });
  }

  _muteLocalAudioStream() async {
    await _engine.muteLocalAudioStream(!muteMicrophone);
    setState(() {
      muteMicrophone = !muteMicrophone;
    });
  }

  _muteAllRemoteAudioStreams() async {
    await _engine.muteAllRemoteAudioStreams(!muteAllRemoteAudio);
    setState(() {
      muteAllRemoteAudio = !muteAllRemoteAudio;
    });
  }

  _switchSpeakerphone() async {
    await _engine.setEnableSpeakerphone(!enableSpeakerphone);
    setState(() {
      enableSpeakerphone = !enableSpeakerphone;
    });
  }

  _onChangeInEarMonitoringVolume(double value) async {
    _inEarMonitoringVolume = value;
    await _engine.setInEarMonitoringVolume(_inEarMonitoringVolume.toInt());
    setState(() {});
  }

  _toggleInEarMonitoring(value) async {
    try {
      await _engine.enableInEarMonitoring(
          enabled: value,
          includeAudioFilters: EarMonitoringFilterType.earMonitoringFilterNone);
      _enableInEarMonitoring = value;
      setState(() {});
    } catch (e) {
      // Do nothing
    }
  }

  @override
  Widget build(BuildContext context) {
    final channelProfileType = [
      ChannelProfileType.channelProfileLiveBroadcasting,
      ChannelProfileType.channelProfileCommunication,
    ];
    final items = channelProfileType
        .map((e) => DropdownMenuItem(
              child: Text(
                e.toString().split('.')[1],
              ),
              value: e,
            ))
        .toList();

    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(hintText: 'Channel ID'),
            ),
            const Text('频道模式: '),
            DropdownButton<ChannelProfileType>(
                items: items,
                value: _channelProfileType,
                onChanged: isJoined
                    ? null
                    : (v) async {
                        setState(() {
                          _channelProfileType = v!;
                        });
                      }),
            Row(children: [
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: isJoined ? _leaveChannel : _joinChannel,
                      child: Text('${isJoined ? '退出' : '加入'} 频道')))
            ]),
            if (kIsWeb) ...[
              TextField(
                controller: _selectedUidController,
                decoration: const InputDecoration(
                    hintText: 'input userID you want to mute/unmute'),
              ),
              ElevatedButton(
                onPressed: () async {
                  await _engine.muteRemoteAudioStream(
                      uid: int.tryParse(_selectedUidController.text) ?? -1,
                      mute: true);
                },
                child: const Text('mute Remote Audio'),
              ),
              ElevatedButton(
                onPressed: () async {
                  await _engine.muteRemoteAudioStream(
                      uid: int.tryParse(_selectedUidController.text) ?? -1,
                      mute: false);
                },
                child: const Text('unmute Remote Audio'),
              ),
            ],
          ],
        ),
        Align(
            alignment: Alignment.center,
            child: Padding(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (kIsWeb) ...[
                    ElevatedButton(
                      onPressed: _muteLocalAudioStream,
                      child: Text(
                          'Microphone ${muteMicrophone ? 'muted' : 'unmute'}'),
                    ),
                    ElevatedButton(
                      onPressed: _muteAllRemoteAudioStreams,
                      child: Text(
                          'All Remote Microphone ${muteAllRemoteAudio ? 'muted' : 'unmute'}'),
                    ),
                  ],
                  ElevatedButton(
                    onPressed: _switchMicrophone,
                    child: Text('麦克风开关： ${openMicrophone ? '开' : '关'}'),
                  ),
                  if (!kIsWeb) ...[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TU.d14("设置默认的音频路由"),
                        ElevatedButton(
                            onPressed: () {
                              _isSetDefaultAudioRouteToSpeakerphone =
                                  !_isSetDefaultAudioRouteToSpeakerphone;
                              _engine.setDefaultAudioRouteToSpeakerphone(
                                  _isSetDefaultAudioRouteToSpeakerphone);
                              setState(() {});
                            },
                            child: Text(!_isSetDefaultAudioRouteToSpeakerphone
                                ? '将耳机设置为默认音频路径'
                                : '将扬声器设置成默认音频路径'))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TU.d14("开启或关闭扬声器播放"),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: isJoined ? _switchSpeakerphone : null,
                          child: Text(enableSpeakerphone ? '扬声器' : '耳机'),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('调节音频采集信号音量:'),
                        Slider(
                          value: _recordingVolume,
                          min: 0,
                          max: 400,
                          divisions: 5,
                          label: '调节音频采集信号音量',
                          onChanged: isJoined
                              ? (double value) async {
                                  setState(() {
                                    _recordingVolume = value;
                                  });
                                  await _engine.adjustRecordingSignalVolume(
                                      value.toInt());
                                }
                              : null,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('调节本地播放的所有远端用户信号音量:'),
                        Slider(
                          value: _playbackVolume,
                          min: 0,
                          max: 400,
                          divisions: 5,
                          label: '调节本地播放的所有远端用户信号音量',
                          onChanged: isJoined
                              ? (double value) async {
                                  setState(() {
                                    _playbackVolume = value;
                                  });
                                  await _engine.adjustPlaybackSignalVolume(
                                      value.toInt());
                                }
                              : null,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('耳返功能'),
                              Switch(
                                value: _enableInEarMonitoring,
                                onChanged:
                                    isJoined ? _toggleInEarMonitoring : null,
                                activeTrackColor: Colors.grey[350],
                                activeColor: Colors.white,
                              )
                            ]),
                        if (_enableInEarMonitoring)
                          SizedBox(
                              width: 300,
                              child: Slider(
                                value: _inEarMonitoringVolume,
                                min: 0,
                                max: 100,
                                divisions: 5,
                                label: '耳返音量： $_inEarMonitoringVolume',
                                onChanged: isJoined
                                    ? _onChangeInEarMonitoringVolume
                                    : null,
                              ))
                      ],
                    ),
                  ],
                ],
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
            ))
      ],
    );
  }
}
