import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';

/// [INFO]
/// Constant for typography to be used in the app with following design system

class TypographyApp {
  /// [INFO]
  /// fontSize: 22.sp,
  /// color: ColorApp.primaryTextColor,
  /// fontWeight: FontWeight.bold,
  static TextStyle title = TextStyle(
    fontSize: 22.sp,
    color: ColorApp.primaryTextColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subTitle = TextStyle(
    fontSize: 20.sp,
    color: ColorApp.primaryTextColor,
  );

  static TextStyle body = TextStyle(
    fontSize: 16.sp,
    color: ColorApp.primaryTextColor,
  );

  static TextStyle body2 = TextStyle(
    fontSize: 14.sp,
    color: ColorApp.primaryTextColor,
  );
}
