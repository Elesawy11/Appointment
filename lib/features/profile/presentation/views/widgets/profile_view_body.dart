import 'package:doc_doc_app/core/routing/routes.dart';
import 'package:doc_doc_app/core/utils/assets.dart';
import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_profile_stack_body.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Profile',
                style: Styles.font18Bold.copyWith(
                  fontWeight: FontWeightHelper.semiBold,
                  color: Colors.white,
                ),
              ),
              horizontalSpace(103),
              IconButton(
                onPressed: () =>
                    context.push('${Routes.profileView}/${Routes.settingView}'),
                icon: SvgPicture.asset(
                  Assets.setting,
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        const CustomProfileStackBody()
      ],
    );
  }
}

List<List<String>> profileFeatures = [
  [
    Assets.personalInfo,
    'Personal Information',
    Routes.personalInfoView,
  ],
  [
    Assets.test,
    'My Test & Diagnostic',
    Routes.medicalRecordesView,
  ],
  [
    Assets.payment,
    'Payment',
    Routes.paymentView,
  ],
];
