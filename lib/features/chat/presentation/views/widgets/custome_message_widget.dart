import 'package:doc_doc_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/styles.dart';

class CustomMessageWidget extends StatelessWidget {
  const CustomMessageWidget({
    super.key,
    this.isHaveSubTitle = true,
  });
  final bool isHaveSubTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(Routes.chatView),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        constraints: BoxConstraints(maxHeight: 140.h),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: ColorManager.grayED,
            ),
          ),
        ),
        child: ListTile(
          titleAlignment: ListTileTitleAlignment.top,
          leading: Image.asset(
            Assets.account,
            width: 50.w,
            height: 50.h,
          ),
          title: SizedBox(
            height: 54.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dr. Randy Wigham',
                      style: Styles.font14Regular.copyWith(
                        fontWeight: FontWeightHelper.semiBold,
                        color: ColorManager.darkBlue,
                      ),
                    ),
                    Text(
                      '7:11 PM',
                      style: Styles.font12Regular.copyWith(
                        color: ColorManager.grey75,
                      ),
                    ),
                  ],
                ),
                Text(
                  'General Doctor | RSUD Gatot Subroto',
                  style: Styles.font12Regular.copyWith(
                    color: ColorManager.grey61,
                  ),
                ),
              ],
            ),
          ),
          subtitle: isHaveSubTitle
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 197.w,
                      height: 62.h,
                      child: Text(
                        'Fine, I\'ll do a check. Does the patient have a history of certain diseases?',
                        style: Styles.font12Regular.copyWith(
                          color: ColorManager.grey75,
                        ),
                      ),
                    ),
                    Container(
                      width: 20.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            8.r,
                          ),
                          color: ColorManager.mainBlue),
                      child: Center(
                        child: Text(
                          '2',
                          style: Styles.font12Regular.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              : null,
        ),
      ),
    );
  }
}
