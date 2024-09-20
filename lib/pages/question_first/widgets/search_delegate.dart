import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:interview_question/constants/app_colors.dart';
import 'package:interview_question/constants/sys_font_size.dart';

///搜索区域
class SearchDelegate extends SliverPersistentHeaderDelegate {
  const SearchDelegate(this.height);

  final double height;

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        height: height,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: TCS.grayf7f,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.search, size: SysFontSize.fontSize_20),
            SizedBox(width: 5.r),
            Expanded(
                child: SizedBox(
                    height: height - 20.r,
                    child: TextField(
                        cursorHeight: GetPlatform.isIOS ? height - 20.r : null,
                        enabled: false,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                            labelText: "Seach",
                            labelStyle: TextStyle(
                                fontSize: SysFontSize.fontSize_12,
                                color: TCS.black000,
                                fontWeight: FontWeight.w600),
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
                                color: TCS.grayf7f,
                                fontSize: SysFontSize.fontSize_30)),
                        style: TextStyle(
                            fontSize: SysFontSize.fontSize_12,
                            color: TCS.black000,
                            fontWeight: FontWeight.w600))))
          ],
        ));
  }

  InputBorder _inputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(width: 0, color: Colors.transparent),
    );
  }
}
