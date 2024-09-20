import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 页面加载
class StatusOnLoading extends StatelessWidget {
  final Color? loadingColor;

  const StatusOnLoading({super.key, this.loadingColor});

  @override
  Widget build(BuildContext context) => Center(
      child: CupertinoActivityIndicator(radius: 10.r, color: loadingColor));
}
