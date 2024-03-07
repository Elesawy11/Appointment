import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/styles.dart';

class CustomTextAndTextButton extends StatelessWidget {
  const CustomTextAndTextButton({
    super.key,
    required this.text,
    this.onPressed,
  });
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.font18Bold.copyWith(
            fontWeight: FontWeightHelper.semiBold,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            'See All',
            style: Styles.font12Regular.copyWith(
              color: ColorManager.mainBlue,
            ),
          ),
        ),
      ],
    );
  }
}
