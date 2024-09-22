import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class ImListPage extends GetView<ImListController> {
  const ImListPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImListController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("im_list")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
