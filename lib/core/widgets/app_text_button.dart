import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/color.dart';
import '../utils/styles.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    this.onPressed,
    required this.text,
  });
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: ColorManager.mainBlue,
        minimumSize: Size(double.infinity, 52.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      child: Text(
        text,
        style: Styles.font16Semibold.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
