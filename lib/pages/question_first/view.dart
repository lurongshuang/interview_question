import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:interview_question/components/app_icon_bar/app_icon_bar.dart';
import 'package:interview_question/components/app_icon_bar/appbar_back_button.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/constants/sys_font_size.dart';
import 'package:interview_question/utils/space/space.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class QuestionFirstPage extends GetView<QuestionFirstController> {
  const QuestionFirstPage({super.key});

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionFirstController>(builder: (_) {
      return Scaffold(
          appBar: AppIconBar(titleText: "面试题1", actionList: [
            Icon(Icons.notifications_none_rounded,
                size: SysFontSize.fontSize_20),
            PU.h(
                h: 10.r,
                child: Icon(Icons.settings, size: SysFontSize.fontSize_20))
          ]),
          backgroundColor: TCS.white,
          body: SafeArea(child: _buildView()));
    });
  }
}
