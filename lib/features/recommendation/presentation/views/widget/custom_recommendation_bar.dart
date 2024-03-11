import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/styles.dart';

class CustomRecommendationBar extends StatelessWidget {
  const CustomRecommendationBar({
    super.key,
  });

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
              Icons.arrow_back_ios_new,
              size: 24.r,
            ),
          ),
        ),
        Expanded(
          child: Text(
            'Recommendation Doctor',
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
