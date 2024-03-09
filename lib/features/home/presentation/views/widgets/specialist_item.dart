import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';

class SpecialistItem extends StatelessWidget {
  const SpecialistItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74.w,
      child: Column(
        children: [
          Image.asset(
            general,
            width: 56.w,
            height: 56.h,
          ),
          verticalSpace(8),
          Text(
            'General',
            style: Styles.font12Regular,
          )
        ],
      ),
    );
  }
}
