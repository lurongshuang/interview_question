import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_question/utils/log/logger.dart';

import 'page_lifecycle_mixin.dart';

///监听路由变化
class PageLifecycleObserver extends NavigatorObserver with LoggerPlus {
  static PageLifecycleObserver get to => Get.find();

  ///监听回调
  static List<PageChangeListener> _pageChangeListeners = [];

  ///当前APP所在路由名称
  static String? currentPageName;

  ///获取当前路由 PageLifecycleMixin
  PageLifecycleMixin? getCurrentPage() {
    return _controllers[currentPageName];
  }

  ///跳转路由集合
  static final Map<String, PageLifecycleMixin> _controllers = {};

  ///添加路由PageLifecycleMixin
  void addController(String tag, PageLifecycleMixin controller) {
    _controllers[tag] = controller;
  }

  ///删除指定路由PageLifecycleMixin
  void removeController(String tag) {
    _controllers.remove(tag);
  }

  ///是否包含
  bool hasPageChangeListener(PageChangeListener pageChangeListener) {
    return _pageChangeListeners.contains(pageChangeListener);
  }

  ///添加监听
  void addPageChangeListener(PageChangeListener pageChangeListener) {
    _pageChangeListeners.add(pageChangeListener);
  }

  ///移除监听
  void removePageChangeListener(PageChangeListener pageChangeListener) {
    _pageChangeListeners.remove(pageChangeListener);
  }

  ///清理监听
  void clearPageChangeListeners() {
    _pageChangeListeners.clear();
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final tag = route.settings.name;

    ///赋值给当前路由名称
    currentPageName = tag;
    if (tag != null && _controllers.containsKey(tag)) {
      _controllers[tag]!.onPageResumed();
    }

    if (previousRoute != null) {
      final previousTag = previousRoute.settings.name;
      if (previousTag != null && _controllers.containsKey(previousTag)) {
        ///判断新页面是不是弹窗，是的话，调用当前页面pause  不是弹出调用当前页面 stop
        if (route is PopupRoute) {
          _controllers[previousTag]!.onPagePaused();
        } else {
          _controllers[previousTag]!.onPageStop();
        }
      }
    }

    ///传递监听
    for (var value in _pageChangeListeners) {
      value.didPush(route, previousRoute);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final tag = route.settings.name;
    if (tag != null && _controllers.containsKey(tag)) {
      _controllers[tag]!.onPageStop();
    }
    if (previousRoute != null) {
      final previousTag = previousRoute.settings.name;

      ///赋值给当前路由名称
      currentPageName = previousRoute.settings.name;
      if (previousTag != null && _controllers.containsKey(previousTag)) {
        _controllers[previousTag]!.onPageResumed();
      }
    }

    ///传递监听
    for (var element in _pageChangeListeners) {
      element.didPop(route, previousRoute);
    }
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    log("didRemove. route: $route, previousRoute: $previousRoute");
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    log("didReplace. route: $newRoute, previousRoute: $oldRoute");
  }
}

///监听
abstract class PageChangeListener {
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute);

  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute);
}
