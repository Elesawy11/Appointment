import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/core/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/custom_notification_container_widget.dart';

class SecurityView extends StatelessWidget {
  const SecurityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            verticalSpace(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const CustomAppBarWidget(text: 'Security'),
            ),
            verticalSpace(32),
            Expanded(
              child: ListView.builder(
                itemCount: securitys.length,
                itemBuilder: (context, index) => CustomSwitchWidget(
                  text: securitys[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> securitys = [
  'Remember password',
  'Face ID',
  'PIN',
];
