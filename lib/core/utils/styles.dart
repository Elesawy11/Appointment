import 'package:doc_doc_app/core/utils/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static TextStyle font30Semibold = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font32Bold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font12Regular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16Semibold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
}
