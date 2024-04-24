import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/core/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/custom_notification_container_widget.dart';

class SettingNotificationView extends StatelessWidget {
  const SettingNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            verticalSpace(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const CustomAppBarWidget(text: 'Notification'),
            ),
            verticalSpace(32),
            Expanded(
              child: ListView.builder(
                itemCount: notifications.length,
                itemBuilder: (context, index) => CustomSwitchWidget(
                  text: notifications[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<String> notifications = [
  'Notification from DocNow',
  'Sound',
  'Vibrate',
  'App Updates',
  'Special Offers',
];
