import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:interview_question/components/app_icon_bar/appbar_back_button.dart';
import 'package:interview_question/constants/app_colors.dart';

import '../index.dart';
import 'question_item_widget.dart';

/// hello
class HelloWidget extends GetView<HomeController> {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
        color: TCS.grayf7f,
        child: ListView.builder(
            itemCount: controller.questionList.length,
            itemBuilder: (context, index) {
              return QuestionItemWidget(title: controller.questionList[index],onTap: ()=>controller.itemClick(index),);
            }));
  }
}
