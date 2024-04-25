import 'package:doc_doc_app/core/routing/routes.dart';
import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/core/widgets/custom_app_bar_widget.dart';
import 'package:doc_doc_app/features/profile/presentation/views/widgets/custom_alet_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/assets.dart';
import 'widgets/custom_setting_container_widget.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              verticalSpace(16),
              const CustomAppBarWidget(
                text: 'Setting',
              ),
              verticalSpace(32),
              CustomSettingContainerWidget(
                image: settings[0][0],
                text: settings[0][1],
                onTap: () => context.push(
                    '${Routes.profileView}/${Routes.settingNotificationView}'),
              ),
              CustomSettingContainerWidget(
                image: settings[1][0],
                text: settings[1][1],
                onTap: () =>
                    context.push('${Routes.profileView}/${Routes.fAQView}'),
              ),
              CustomSettingContainerWidget(
                image: settings[2][0],
                text: settings[2][1],
                onTap: () => context
                    .push('${Routes.profileView}/${Routes.securityView}'),
              ),
              CustomSettingContainerWidget(
                image: settings[3][0],
                text: settings[3][1],
                onTap: () => context
                    .push('${Routes.profileView}/${Routes.languageView}'),
              ),
              CustomSettingContainerWidget(
                image: settings[4][0],
                text: settings[4][1],
                color: Colors.red,
                onTap: () => showDialog(
                  context: context,
                  builder: (context) => const CustomAlertDialog(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<List<String>> settings = [
  [
    Assets.notification,
    'Notification',
  ],
  [
    Assets.fAQ,
    'FAQ',
  ],
  [
    Assets.security,
    'Security',
  ],
  [
    Assets.language,
    'Language',
  ],
  [
    Assets.logout,
    'Logout',
  ],
];
