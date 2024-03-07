import 'package:doc_doc_app/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account yet?',
          style: Styles.font12Regular.copyWith(
            color: ColorManager.darkBlue,
          ),
        ),
        TextButton(
            onPressed: () => GoRouter.of(context).push(Routes.loginView),
            child: Text(
              'Login',
              style: Styles.font12Regular.copyWith(
                  fontWeight: FontWeightHelper.semiBold,
                  color: ColorManager.mainBlue),
            ))
      ],
    );
  }
}
