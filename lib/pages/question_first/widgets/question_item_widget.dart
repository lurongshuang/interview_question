import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/constants/sys_font_size.dart';
import 'package:interview_question/data/patient_bean.dart';
import 'package:interview_question/utils/text_utils/text_utils.dart';

class QListItemWidget extends StatelessWidget {
  const QListItemWidget({required this.patientBean, super.key});

  final PatientBean patientBean;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.r),
        margin: EdgeInsets.only(bottom: 15.r),
        decoration: BoxDecoration(
            color: TCS.grayf7f, borderRadius: BorderRadius.circular(15.r)),
        child: Row(children: [
          Container(
              width: 50.r,
              height: 50.r,
              margin: EdgeInsets.only(right: 10.r),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                  color: TCS.gray9e9),
              child: Icon(Icons.account_circle,
                  color: TCS.white, size: SysFontSize.fontSize_30)),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Row(children: [
                  Expanded(child: TU.d18("${patientBean.name}", bold: true)),
                  TU.d14("${patientBean.city}")
                ]),
                SizedBox(height: 5.r),
                TU.d14("性别：${patientBean.gender}")
              ]))
        ]));
  }
}
