import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';

class CustomBookAndScheduleWidget extends StatelessWidget {
  const CustomBookAndScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 343.w,
          height: 167.h,
          decoration: BoxDecoration(
              color: ColorManager.mainBlue,
              borderRadius: BorderRadius.circular(24.r)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(12),
              SizedBox(
                width: 143.w,
                height: 87.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.w,
                  ),
                  child: Text(
                    'Book and schedule with nearest doctor',
                    style: Styles.font18Bold.copyWith(
                        fontWeight: FontWeightHelper.medium,
                        color: Colors.white),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  height: 38.h,
                  width: 109.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(48.r)),
                  child: Center(
                    child: Text(
                      'Find Nearby',
                      style: Styles.font12Regular.copyWith(
                        color: ColorManager.mainBlue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 15,
          bottom: 0,
          child: Image.asset(
            bookImage,
            fit: BoxFit.fill,
            width: 136.w,
            height: 197.h,
          ),
        ),
      ],
    );
  }
}
