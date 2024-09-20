import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/constants/sys_font_size.dart';
import 'package:interview_question/utils/text_utils/text_utils.dart';

class QuestionItemWidget extends StatelessWidget {
  ///标题
  final String title;
  final GestureTapCallback? onTap;

  const QuestionItemWidget({required this.title, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 0.5.r, color: TCS.gray9e9))),
        child: ListTile(
            title: TU.d18(title),
            onTap: onTap,
            splashColor: TCS.white,
            trailing: Icon(Icons.chevron_right_rounded,
                size: SysFontSize.fontSize_20, color: TCS.gray9e9)));
  }
}
