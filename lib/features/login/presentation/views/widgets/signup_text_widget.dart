import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/styles.dart';

class SignUpTextWidget extends StatelessWidget {
  const SignUpTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account yet?',
            style: Styles.font12Regular.copyWith(
              color: ColorManager.darkBlue,
            ),
          ),
          TextSpan(
            text: '  Sign Up ',
            style: Styles.font12Regular.copyWith(
                fontWeight: FontWeightHelper.semiBold,
                color: ColorManager.mainBlue),
          ),
        ],
      ),
    );
  }
}