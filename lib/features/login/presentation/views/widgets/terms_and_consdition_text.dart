import 'package:doc_doc_app/core/utils/font_weight_helper.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: Styles.font12Regular.copyWith(
              color: ColorManager.grayC2,
            ),
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: Styles.font12Regular.copyWith(
              color: ColorManager.darkBlue,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
          TextSpan(
            text: ' and',
            style: Styles.font12Regular
                .copyWith(color: ColorManager.grey9E, height: 1.5),
          ),
          TextSpan(
            text: ' PrivacyPolicy.',
            style: Styles.font12Regular.copyWith(
              color: ColorManager.darkBlue,
              height: 1.5,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
        ],
      ),
    );
  }
}
