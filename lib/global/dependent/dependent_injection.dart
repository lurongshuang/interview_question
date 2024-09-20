import 'package:get/get.dart';
import 'package:interview_question/app/app_life_cycle/app_life_cycle.dart';
import 'package:interview_question/app/page_lifecycle/page_lifecycle_observer.dart';
import 'package:interview_question/pages/wf_app_page/controller.dart';

///需要初始化的控制器
class DependentInjection {
  static Future<void> init() async {
    ///用户配置信息
    Get.put<WfAppPageController>(WfAppPageController());

    ///app生命周期
    Get.put<AppFullLifeCycle>(AppFullLifeCycle());

    ///页面路由
    Get.put<PageLifecycleObserver>(PageLifecycleObserver());

    /// ....
  }

  ///用户同意后后，初始化依赖
  static Future<void> afterConsentInit() async {
    ///...
  }
}
