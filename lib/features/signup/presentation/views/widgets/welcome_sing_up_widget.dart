import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';

class WelcomeSignUpWidget extends StatelessWidget {
  const WelcomeSignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(94),
        Text(
          'Create Account',
          style: Styles.font24Bold.copyWith(color: ColorManager.mainBlue),
        ),
        verticalSpace(8),
        Text(
          'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
          style: Styles.font14Regular.copyWith(color: ColorManager.grey75),
        )
      ],
    );
  }
}
