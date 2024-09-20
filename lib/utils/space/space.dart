import 'package:flutter/material.dart';

/// 留白 间距 SpaceUtils
/// 采用 padding 填充
/// SpaceUtils
class PU {
  /// top bootom
  /// 上下距离
  static Widget v({required double v, required Widget child}) =>
      only(child: child, padding: EdgeInsets.symmetric(vertical: v));

  /// left right 左右距离
  static Widget h({required double h, required Widget child}) =>
      only(child: child, padding: EdgeInsets.symmetric(horizontal: h));

  /// left right 左右距离
  static Widget vh({double? v, double? h, required Widget child}) => only(
      child: child,
      padding: EdgeInsets.symmetric(horizontal: h ?? 0.0, vertical: v ?? 0.0));

  /// all 上下左右
  static Widget a({double? a, required Widget child}) => only(
        child: child,
        padding: EdgeInsets.all(a ?? 0.0),
      );

  /// left 左边距离
  static Widget l({required double l, required Widget child}) =>
      only(child: child, left: l);

  /// top 上边距离
  static Widget t({required double t, required Widget child}) =>
      only(child: child, top: t);

  /// right 右边距离
  static Widget r({required double r, required Widget child}) =>
      only(child: child, right: r);

  /// botom 下编距离
  static Widget b({required double b, required Widget child}) =>
      only(child: child, bottom: b);

  /// 默认
  static Widget only(
          {required Widget child,
          EdgeInsets? padding,
          double top = 0.0,
          double left = 0.0,
          double right = 0.0,
          double bottom = 0.0}) =>
      Padding(
        padding: padding ??
            EdgeInsets.only(top: top, left: left, right: right, bottom: bottom),
        child: child,
      );
}

/// SizeBox 高度
class SWH {
  static Widget h(double h, [Widget? child]) =>
      SizedBox(height: h, child: child);
  static Widget w(double w, [Widget? child]) =>
      SizedBox(width: w, child: child);
}
