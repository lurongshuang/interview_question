import 'package:flutter/material.dart';

import 'page_lifecycle_mixin.dart';

///封装State 带 页面生命周期
abstract class PageLifecycleState<T extends StatefulWidget> extends State
    with PageLifecycleMixin {
  @override
  void initState() {
    ///添加到回调队列
    addToPageLifecycle();
    super.initState();
  }

  @override
  void dispose() {
    ///移除出回调队列
    removeToPageLifecycle();
    super.dispose();
  }
}
