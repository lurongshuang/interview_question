import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:interview_question/app/page_lifecycle/page_lifecycle_controller.dart';
import 'package:interview_question/constants/app_assets.dart';
import 'package:interview_question/data/patient_bean.dart';
import 'package:interview_question/pages/question_first/routes.dart';

import 'index.dart';
import 'widgets/gender_filter_widget.dart';

class QuestionFirstController extends PageLifecycleController with StateMixin {
  QuestionFirstController();

  final stateValue = QuestionFirstState();

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
    getListData();
    Future.delayed(const Duration(seconds: 1), () {
      change(null, status: RxStatus.success());
    });
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }

  @override
  String pageLifecycleName() {
    return QuestionFirstPageRouters.questionFirstPageRouteName;
  }

  void getListData() async {
    String feedListJson = await rootBundle.loadString(AppAssets.patientList);
    List maps = json.decode(feedListJson);
    stateValue.listData.clear();
    for (var el in maps) {
      stateValue.listData.add(PatientBean.fromJson(el));
    }
    if (stateValue.genderValue > 0) {
      var temList = stateValue.listData
          .where((el) =>
              el.gender == stateValue.genderList[stateValue.genderValue.value])
          .toList();
      stateValue.listData.clear();
      stateValue.listData.addAll(temList);
    }
  }

  ///点击筛选
  void filterTap() {
    Get.bottomSheet(
            GenderFilterWidget(genderValue: stateValue.genderValue.value))
        .then((val) {
      if (val != null) {
        if (stateValue.genderValue.value == val) {
          return;
        }
        stateValue.genderValue(val);
        getListData();
      }
    });
  }
}
