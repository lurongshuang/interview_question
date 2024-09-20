import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/utils/text_utils/text_utils.dart';

class GenderFilterWidget extends StatefulWidget {
  const GenderFilterWidget({required this.genderValue, super.key});

  final int genderValue;

  @override
  State<GenderFilterWidget> createState() => _GenderFilterWidgetState();
}

class _GenderFilterWidgetState extends State<GenderFilterWidget> {
  final genderValue = 0.obs;

  @override
  void initState() {
    super.initState();
    genderValue(widget.genderValue);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.r,
        padding: EdgeInsets.all(15.r),
        decoration: BoxDecoration(
            color: TCS.white, borderRadius: BorderRadius.circular(20.r)),
        child: Column(children: [
          Obx(() => Row(
                children: [
                  Expanded(child: TU.d18("性别：")),
                  TU.d14("不限", bold: true),
                  Radio(
                      value: 0,
                      groupValue: genderValue.value,
                      onChanged: (value) {
                        genderValue(value);
                      }),
                  TU.d14("女", bold: true),
                  Radio(
                      value: 1,
                      groupValue: genderValue.value,
                      onChanged: (value) {
                        genderValue(value);
                      }),
                  TU.d14("男", bold: true),
                  Radio(
                      value: 2,
                      groupValue: genderValue.value,
                      onChanged: (value) {
                        genderValue(value);
                      })
                ],
              )),
          SizedBox(height: 10.r),
          OutlinedButton(
              onPressed: () {
                Get.back(result: genderValue.value);
              },
              child: TU.d14("确认"))
        ]));
  }
}
