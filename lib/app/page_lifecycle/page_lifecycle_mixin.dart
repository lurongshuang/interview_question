import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'page_lifecycle_observer.dart';

abstract mixin class PageLifecycleMixin {
  bool isPageVisible = false;

  ///将自身添加到路由列表
  addToPageLifecycle() {
    final PageLifecycleObserver pageLifecycleObserver =
        Get.find<PageLifecycleObserver>();
    pageLifecycleObserver.addController(pageLifecycleName(), this);
    isPageVisible = true;
  }

  ///删除自己在 路由集合
  removeToPageLifecycle() {
    final PageLifecycleObserver pageLifecycleObserver =
        Get.find<PageLifecycleObserver>();
    pageLifecycleObserver.removeController(pageLifecycleName());
  }

  ///路由名称
  String pageLifecycleName();

  ///页面暂停
  void onPagePaused() {
    debugPrint('Page paused');
    isPageVisible = false;
  }

  ///页面停止
  void onPageStop() {
    debugPrint('Page stop');
    isPageVisible = false;
  }

  ///页面重显
  void onPageResumed() {
    debugPrint('Page resumed');
    isPageVisible = true;
  }
}
