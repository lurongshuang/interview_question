import 'package:flutter/material.dart';

///重新加载全部页面   用在登录成功后，更新用户信息，重新进入首页
class ReaLoadAllPage extends StatefulWidget {
  final Widget child;

  const ReaLoadAllPage({required this.child, super.key});

  @override
  State<ReaLoadAllPage> createState() => _ReaLoadAllPageState();
}

class _ReaLoadAllPageState extends State<ReaLoadAllPage> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 500), () {
      // UserStoreController.to.reaLoadAllPage(false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
