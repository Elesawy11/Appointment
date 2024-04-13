import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';

class BookPhaseWidget extends StatelessWidget {
  const BookPhaseWidget({
    super.key,
    required this.number,
    required this.text,
    this.color,
    this.textColor,
  });
  final String number, text;
  final Color? color, textColor;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: SizedBox(
          width: 82.w,
          child: Column(
            children: [
              Container(
                width: 32.w,
                height: 32.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: color,
                ),
                child: Center(
                  child: Text(
                    number,
                    style: Styles.font12Regular.copyWith(
                      fontWeight: FontWeightHelper.medium,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              verticalSpace(6),
              Text(
                text,
                style: Styles.font12Regular.copyWith(
                  color: textColor ?? ColorManager.darkBlue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<List<String>> phasesList = [
  [
    '1',
    'Date & Time',
  ],
  [
    '2',
    'Payment',
  ],
  [
    '3',
    'Summary',
  ],
];
