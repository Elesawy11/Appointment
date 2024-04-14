import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../utils/color.dart';
import '../utils/font_weight_helper.dart';
import '../utils/styles.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    required this.text,
    this.icon,
  });
  final String text;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 44.w,
          height: 44.h,
          decoration: BoxDecoration(
            border: Border.all(color: ColorManager.lightWhite),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: IconButton(
            onPressed: () => context.pop(),
            icon: Icon(
              icon ?? Icons.arrow_back_ios_new,
              size: 24.r,
            ),
          ),
        ),
        Expanded(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Styles.font18Bold.copyWith(
              fontWeight: FontWeightHelper.semiBold,
            ),
          ),
        )
      ],
    );
  }
}
