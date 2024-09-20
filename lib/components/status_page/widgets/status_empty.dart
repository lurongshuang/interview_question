import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_question/constants/app_assets.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/utils/space/space.dart';
import 'package:interview_question/utils/text_utils/text_utils.dart';

/// 空页面
class StatusEmpty extends StatelessWidget {
  final VoidCallback? callback;
  final String? errorText;

  const StatusEmpty({super.key, this.callback, this.errorText});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
            onTap: callback,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              PU.b(
                  b: 12.r,
                  child: SvgPicture.asset(AppAssets.icEmpty,
                      width: 96.r, height: 96.r)),
              TU.headlineSmall(errorText ?? "暂无数据",
                  color: TCS.black000, bold: true, textAlign: TextAlign.center)
            ])));
  }
}
