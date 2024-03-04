import 'package:doc_doc_app/core/utils/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static TextStyle font12Regular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font13Regular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14Regular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font16Semibold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font24Bold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font30Semibold = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font32Bold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
  );
}
