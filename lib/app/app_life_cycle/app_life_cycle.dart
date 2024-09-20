import 'package:get/get.dart';
import 'package:interview_question/app/page_lifecycle/page_lifecycle_observer.dart';
import 'package:interview_question/utils/get_is_registered/get_is_registered.dart';

///APP生命周期
class AppFullLifeCycle extends FullLifeCycleController with FullLifeCycleMixin {
  static AppFullLifeCycle get to =>
      GIR.isR<AppFullLifeCycle>() ? Get.find() : Get.put(AppFullLifeCycle());

  ///app 生命周期状态
  AppFullLifeCycleSate appFullLifeCycleSate = AppFullLifeCycleSate.none;

  ///是否是可见的
  bool isAPPVisible = false;

  @override
  void onDetached() {
    appFullLifeCycleSate = AppFullLifeCycleSate.onDetached;
    isAPPVisible = false;
  }

  @override
  void onInactive() {
    appFullLifeCycleSate = AppFullLifeCycleSate.onInactive;
    isAPPVisible = false;
    // APP进入非活动状态
    if (GIR.isR<PageLifecycleObserver>()) {
      if ((PageLifecycleObserver.to.getCurrentPage()?.isPageVisible ?? false)) {
        PageLifecycleObserver.to.getCurrentPage()?.onPagePaused();
      }
    }
    //停止计时
    // if (GIR.isR<UsageDurationService>()) {
    //   UsageDurationService.to.stopTimer();
    //   RecordSubmitService.instance.submit();
    // }
  }

  @override
  void onPaused() {
    appFullLifeCycleSate = AppFullLifeCycleSate.onPaused;
    isAPPVisible = false;
    // APP进入后台
    if (GIR.isR<PageLifecycleObserver>()) {
      PageLifecycleObserver.to.getCurrentPage()?.onPageStop();
    }
  }

  @override
  void onResumed() {
    appFullLifeCycleSate = AppFullLifeCycleSate.onResumed;
    isAPPVisible = true;
    Future.delayed(Duration(milliseconds: 500), () {
      // APP进入前台
      if (GIR.isR<PageLifecycleObserver>()) {
        PageLifecycleObserver.to.getCurrentPage()?.onPageResumed();
      }
      //计时
      // if (GIR.isR<UsageDurationService>()) {
      //   UsageDurationService.to.startTimer();
      // }
    });
  }

  @override
  void onReady() {
    appFullLifeCycleSate = AppFullLifeCycleSate.onReady;
    isAPPVisible = true;
    // if (GIR.isR<UsageDurationService>()) {
    //   UsageDurationService.to.startTimer();
    // }
    super.onReady();
  }

  @override
  void onHidden() {}
}

enum AppFullLifeCycleSate {
  onDetached,
  onInactive,
  onPaused,
  onResumed,
  onReady,
  none
}
