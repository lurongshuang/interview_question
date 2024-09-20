import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_question/components/app_icon_bar/app_icon_bar.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {
          return Scaffold(
              appBar: AppIconBar(titleText: "面试题"),
              body: SafeArea(child: _buildView()));
        });
  }
}
