import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/constants/sys_font_size.dart';
import 'package:interview_question/utils/text_utils/text_utils.dart';

///筛选区域
class FilteringDelegate extends SliverPersistentHeaderDelegate {
  const FilteringDelegate({required this.title, this.onTap});

  ///标题
  final String title;

  ///点击回调
  final GestureTapCallback? onTap;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 54.r,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 10.r),
          decoration: BoxDecoration(
              color: TCS.grayf7f, borderRadius: BorderRadius.circular(10.r)),
          child: Row(children: [
            Icon(Icons.add, size: SysFontSize.fontSize_20),
            TU.d13(title)
          ])),
    );
  }

  @override
  double get maxExtent => 54.r;

  @override
  double get minExtent => 54.r;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
