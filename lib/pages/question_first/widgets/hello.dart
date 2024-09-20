import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:interview_question/components/status_page/index.dart';

import '../index.dart';
import 'question_item_widget.dart';
import 'search_delegate.dart' as se;
import 'filtering_delegate.dart';

/// hello
class HelloWidget extends GetView<QuestionFirstController> {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.r),
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverPersistentHeader(
                    floating: true, delegate: se.SearchDelegate(34.r)),
                SliverPadding(padding: EdgeInsets.only(top: 10.r)),
                Obx(() {
                  String genTitle = controller.stateValue
                      .genderList[controller.stateValue.genderValue.value];
                  return SliverPersistentHeader(
                      floating: true,
                      delegate: FilteringDelegate(
                          onTap: () {
                            controller.filterTap();
                          },
                          title: "筛选条件：性别：$genTitle"),
                      pinned: true);
                })
              ];
            },
            body: Obx(() => StatusPage(
                controller: controller,
                child: ListView.builder(
                    itemCount: controller.stateValue.listData.length,
                    padding: EdgeInsets.symmetric(vertical: 15.r),
                    itemBuilder: (context, index) {
                      return QListItemWidget(
                          patientBean: controller.stateValue.listData[index]);
                    })))));
  }
}
