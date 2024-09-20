import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:interview_question/components/app_icon_bar/appbar_back_button.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/utils/text_utils/text_utils.dart';

import '../index.dart';
import 'message_item.dart';

/// hello
class HelloWidget extends GetView<QuestionSecondController> {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TCS.appBlue,
      child: Obx(() => ListView.builder(
          padding: EdgeInsets.all(15.r),
          itemBuilder: (context, index) {
            var list = controller.stateVal
                .conversations[controller.stateVal.selectIndex.value].messages;
            return MessageItem(message: list[index]);
          },
          itemCount: controller
              .stateVal
              .conversations[controller.stateVal.selectIndex.value]
              .messages
              .length)),
    );
  }
}
