import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:interview_question/constants/app_assets.dart';

///AppBar 返回按钮
class AppbarBackButton extends StatelessWidget {
  final VoidCallback? back;
  final String? assetName;
  final Color? color;

  const AppbarBackButton({super.key, this.back, this.assetName, this.color});

  @override
  Widget build(BuildContext context) {
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
    final bool canPop = parentRoute?.canPop ?? false;
    print('canPop: $canPop');
    return canPop
        ? IconButton(
            onPressed: back ?? Get.back,
            icon: SvgPicture.asset(assetName ?? AppAssets.icClose,
                width: 33.r, height: 33.r, color: color))
        : const SizedBox();
  }
}
