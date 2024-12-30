import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class DividerAndText extends StatelessWidget {
  const DividerAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Divider(
            color: ColorManager.grayC2,
            thickness: 2,
          ),
        ),
        Text(
          ' Or sign up ',
          style: Styles.font13Regular.copyWith(
            color: ColorManager.grey75,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Divider(
            color: ColorManager.grayC2,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
