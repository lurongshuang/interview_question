import 'package:interview_question/utils/log/logger.dart';

import 'page_lifecycle_controller.dart';

///页面统计时间
abstract class PageStatisticalTimeController extends PageLifecycleController
    with LoggerPlus {
  DateTime pageStartTime = DateTime.now();
  DateTime pageEndTime = DateTime.now();
  bool awaitEnd = false;

  ///开始计时
  void _startTime() {
    //重置时间
    _resetDate();
    awaitEnd = true;
    printLog('开始计时------');
  }

  ///重置计时
  _resetDate() {
    DateTime tem = DateTime.now();
    pageStartTime = tem;
    pageEndTime = tem;
  }

  ///结束计时
  void _endTime() {
    if (!awaitEnd) {
      return;
    }
    awaitEnd = false;
    pageEndTime = DateTime.now();
    Duration duration = pageEndTime.difference(pageStartTime);
    if (duration.inSeconds <= 0) {
      return;
    }
    pageStatisticalTime(
        startTime: pageStartTime, endTime: pageEndTime, duration: duration);
    printLog('结束计时------统计结果：${duration.inSeconds}');
    _resetDate();
  }

  ///结束计时
  void pageStatisticalTime(
      {required DateTime startTime,
      required DateTime endTime,
      required Duration duration});

  @override
  void onInit() {
    _startTime();
    super.onInit();
  }

  @override
  void onPageResumed() {
    _startTime();
    super.onPageResumed();
  }

  @override
  void onClose() {
    _endTime();
    super.onClose();
  }

  @override
  void onPagePaused() {
    _endTime();
    super.onPagePaused();
  }

  @override
  void onPageStop() {
    _endTime();
    super.onPageStop();
  }
}
