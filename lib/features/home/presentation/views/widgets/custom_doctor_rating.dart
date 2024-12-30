import 'package:flutter/material.dart';
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
  final int count;
  final int rating;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          '\$ $rating',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.font12Regular.copyWith(
            fontWeight: FontWeightHelper.medium,
            color: ColorManager.grey75,
          ),
        ),
        horizontalSpace(6),
        Text(
          '($count reviews)',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.font12Regular.copyWith(
            fontWeight: FontWeightHelper.medium,
            color: ColorManager.grey75,
          ),
        ),
      ],
    );
  }
}
