import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:flutter/material.dart';

import 'custom_onboarding_title.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            sizedBoxSpace(height: 24),
            const CustomOnboardingTitle(),
          ],
        ),
      ),
    );
  }
}
