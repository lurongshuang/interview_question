import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'dart:math' as math;

class FilletBoxWidget extends StatelessWidget {
  final Align? filletAlign;

  const FilletBoxWidget({required this.child, this.filletAlign, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Transform.rotate(
          angle: math.pi / 4,
          child: Container(
            width: 10.r,
            height: 10.r,
            decoration: BoxDecoration(
                color: TCS.appGreen, borderRadius: BorderRadius.circular(2.r)),
          )),
      Expanded(
          child: Align(
        alignment: Alignment.centerLeft,
        child: Transform.translate(
            offset: Offset(-5.r, 0),
            child: Container(
                padding: EdgeInsets.all(5.r),
                decoration: BoxDecoration(
                    color: TCS.appGreen,
                    borderRadius: BorderRadius.circular(5.r)),
                child: child)),
      ))
    ]);
  }
}
