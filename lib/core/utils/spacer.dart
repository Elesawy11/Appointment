import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox heightSpace(double height) {
  return SizedBox(
    height: height.h,
  );
}

SizedBox widthSpace(double width) {
  return SizedBox(
    width: width.w,
  );
}

SizedBox sizedBoxSpace({double? height, double? width}) {
  return SizedBox(
    height: height,
    width: width,
  );
}
