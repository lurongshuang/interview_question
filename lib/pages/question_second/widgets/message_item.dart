import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/data/message.dart';
import 'package:interview_question/utils/text_utils/text_utils.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({required this.message, super.key});

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10.r),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Visibility(
                  visible: message.type == MessageType.systemReply,
                  child: Container(
                      width: 20.r,
                      height: 20.r,
                      margin: EdgeInsets.only(right: 8.r),
                      decoration: const BoxDecoration(color: TCS.gray9e9))),
              Expanded(
                  child: Align(
                      alignment: message.type == MessageType.systemReply
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Container(
                          padding: EdgeInsets.all(5.r),
                          decoration: BoxDecoration(
                              color: TCS.appGreen,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: TU.d14(message.content)))),
              Visibility(
                  visible: message.type == MessageType.userQuestion,
                  child: Container(
                      width: 20.r,
                      height: 20.r,
                      margin: EdgeInsets.only(left: 8.r),
                      decoration: const BoxDecoration(color: TCS.white)))
            ]));
  }
}
