import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:interview_question/components/app_icon_bar/app_icon_bar.dart';
import 'package:interview_question/components/app_icon_bar/appbar_back_button.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/constants/sys_font_size.dart';
import 'package:interview_question/utils/space/space.dart';
import 'package:interview_question/utils/text_utils/text_utils.dart';

import 'index.dart';
import 'widgets/right_menu_widget.dart';
import 'widgets/widgets.dart';

class QuestionSecondPage extends GetView<QuestionSecondController> {
  const QuestionSecondPage({super.key});

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionSecondController>(builder: (_) {
      return Scaffold(
          key: controller.stateVal.scaffoldKey,
          appBar: AppIconBar(titleText: "面试题2", actionList: [
            GestureDetector(
              onTap: () {
                controller.showMenu();
              },
              child: PU.h(
                  h: 10.r,
                  child: Icon(Icons.menu, size: SysFontSize.fontSize_20)),
            )
          ]),
          body: SafeArea(child: _buildView()),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 10.r),
              color: TCS.grayf7f,
              child: Row(children: [
                Expanded(
                    child: Container(
                        height: 30.r,
                        alignment: Alignment.center,
                        color: TCS.white,
                        child: TextField(
                            cursorHeight: GetPlatform.isIOS ? 15.r : null,
                            keyboardType: TextInputType.text,
                            controller: controller.textController,
                            focusNode: controller.inputFocusNode,
                            textInputAction: TextInputAction.done,
                            onSubmitted: controller.handleSubmitted,
                            decoration: InputDecoration(
                                hintText: "输入内容",
                                isCollapsed: true,
                                contentPadding: const EdgeInsets.all(0),
                                focusedBorder: _inputBorder(),
                                disabledBorder: _inputBorder(),
                                errorBorder: _inputBorder(),
                                focusedErrorBorder: _inputBorder(),
                                enabledBorder: _inputBorder(),
                                counterStyle: const TextStyle(fontSize: 0),
                                border: _inputBorder(),
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: TCS.gray9e9,
                                    fontSize: SysFontSize.fontSize_14)),
                            style: TextStyle(
                                fontSize: SysFontSize.fontSize_14,
                                color: TCS.black000,
                                fontWeight: FontWeight.w600)))),
                SizedBox(width: 10.r),
                SizedBox(
                    height: 30.r,
                    child: OutlinedButton(
                        onPressed: () {
                          controller
                              .handleSubmitted(controller.textController.text);
                        },
                        child: TU.d13("发送")))
              ])),
          endDrawer: Obx(() => RightMenuWidget(
              selectIndex: controller.stateVal.selectIndex.value,
              conversations: controller.stateVal.conversations,
              onChangeIndex: (int index) {
                controller.onChangeIndex(index);
              })));
    });
  }
}

InputBorder _inputBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(width: 0, color: Colors.transparent),
  );
}
