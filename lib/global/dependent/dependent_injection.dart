import 'package:get/get.dart';
import 'package:interview_question/app/app_life_cycle/app_life_cycle.dart';
import 'package:interview_question/app/page_lifecycle/page_lifecycle_observer.dart';
import 'package:interview_question/pages/wf_app_page/controller.dart';
import 'package:interview_question/utils/ni_m_sdk/ni_m_sdk.dart';
import 'package:nim_chatkit_ui/chat_kit_client.dart';
import 'package:nim_contactkit_ui/contact_kit_client.dart';
import 'package:nim_conversationkit_ui/conversation_kit_client.dart';
import 'package:nim_searchkit_ui/search_kit_client.dart';
import 'package:nim_teamkit_ui/team_kit_client.dart';

///需要初始化的控制器
class DependentInjection {
  static Future<void> init() async {
    ///用户配置信息
    Get.put<WfAppPageController>(WfAppPageController());

    ///app生命周期
    Get.put<AppFullLifeCycle>(AppFullLifeCycle());

    ///页面路由
    Get.put<PageLifecycleObserver>(PageLifecycleObserver());


    ChatKitClient.init();
    TeamKitClient.init();
    ConversationKitClient.init();
    ContactKitClient.init();
    SearchKitClient.init();

    /// ....
  }

  ///用户同意后后，初始化依赖
  static Future<void> afterConsentInit() async {
    ///...
    ///
    NiMSdk.getInstance().initSDK();
  }
}
