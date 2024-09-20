import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_question/app/page_lifecycle/page_lifecycle_controller.dart';
import 'package:interview_question/data/message.dart';
import 'package:interview_question/pages/question_second/routes.dart';
import 'package:interview_question/utils/ai_res/ai_get_res.dart' as ai_res;
import 'index.dart';

class QuestionSecondController extends PageLifecycleController {
  QuestionSecondController();

  final stateVal = QuestionSecondState();
  final TextEditingController textController = TextEditingController();
  final FocusNode inputFocusNode = FocusNode();

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
    stateVal.conversations.value = [
      Conversation(
          name: '对话1',
          messages: RxList([
            Message(type: MessageType.systemReply, content: '系统回复1'),
            Message(type: MessageType.userQuestion, content: '用户提问1')
          ])),
      Conversation(
          name: '对话2',
          messages: RxList([
            Message(type: MessageType.systemReply, content: '系统回复2'),
            Message(type: MessageType.userQuestion, content: '用户提问2')
          ]))
    ];
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }

  @override
  String pageLifecycleName() {
    return QuestionSecondPageRouters.questionSecondPageRouteName;
  }

  void showMenu() {
    stateVal.scaffoldKey.currentState?.openEndDrawer();
  }

  void onChangeIndex(int index) {
    stateVal.scaffoldKey.currentState?.closeEndDrawer();
    stateVal.selectIndex(index);
  }

  ///请求AI
  void handleSubmitted(String text) {
    if (text.isNotEmpty) {
      stateVal.conversations[stateVal.selectIndex.value].messages
          .add(Message(type: MessageType.userQuestion, content: text));
      ai_res.getAiRes(textController.text).then((res) {
        if (res.isNotEmpty) {
          stateVal.conversations[stateVal.selectIndex.value].messages
              .add(Message(type: MessageType.systemReply, content: res));
        }
      });
      textController.text = '';
    }
  }
}
