import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';

class WelcomeLoginWidget extends StatelessWidget {
  const WelcomeLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(94),
        Text(
          'Welcome Back',
          style: Styles.font24Bold.copyWith(color: ColorManager.mainBlue),
        ),
        verticalSpace(8),
        Text(
          'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
          style: Styles.font14Regular.copyWith(color: ColorManager.grey75),
        )
      ],
    );
  }
}
