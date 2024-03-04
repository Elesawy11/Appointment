import 'package:flutter/material.dart';

import '../../../../core/utils/color.dart';
import '../../../../core/utils/styles.dart';

class StartedTextButton extends StatelessWidget {
  const StartedTextButton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: ColorManager.mainBlue,
        minimumSize: const Size(double.infinity, 52),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Text(
        'Get Started',
        style: Styles.font16Semibold.copyWith(color: Colors.white),
      ),
    );
  }
}
