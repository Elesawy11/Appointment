import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';

class CustomDoctorRating extends StatelessWidget {
  const CustomDoctorRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.count,
    required this.rating,
  });
  final double count;
  final double rating;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          size: 16.r,
          FontAwesomeIcons.solidStar,
          color: const Color(0xffFFDD4F),
        ),
        horizontalSpace(6),
        Text(
          rating.toString(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.font12Regular.copyWith(
            fontWeight: FontWeightHelper.medium,
            color: ColorManager.grey,
          ),
        ),
        horizontalSpace(6),
        Text(
          '($count reviews)',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.font12Regular.copyWith(
            fontWeight: FontWeightHelper.medium,
            color: ColorManager.grey,
          ),
        ),
      ],
    );
  }
}