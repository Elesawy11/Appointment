import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/color.dart';
import '../../../../core/utils/styles.dart';
import 'started_text_button.dart';

class CustomTextAndTextButton extends StatelessWidget {
  const CustomTextAndTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            style: Styles.font12Regular.copyWith(
              color: ColorManger.grey,
            ),
            textAlign: TextAlign.center,
          ),
          sizedBoxSpace(height: 32),
          StartedTextButton(
            onPressed: () {},
          ),
          sizedBoxSpace(height: 32),
        ],
      ),
    );
  }
}
