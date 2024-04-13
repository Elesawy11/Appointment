import 'package:doc_doc_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(12),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Container(
                width: 44.w,
                height: 44.h,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorManager.lightWhite),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: IconButton(
                  onPressed: () => context.pop(),
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    size: 24.r,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'Notification',
                  textAlign: TextAlign.center,
                  style: Styles.font18Bold.copyWith(
                    fontWeight: FontWeightHelper.semiBold,
                  ),
                ),
              )
            ],
          ),
        ),
        verticalSpace(42),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 375.w,
                    height: 120.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          calendarTick,
                          width: 40.w,
                          height: 40.h,
                        ),
                        horizontalSpace(12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Appointment Success ',
                              style: Styles.font14Regular.copyWith(
                                  fontWeight: FontWeightHelper.semiBold,
                                  color: ColorManager.darkBlue),
                            ),
                            verticalSpace(4),
                            SizedBox(
                              width: 275.w,
                              height: 57.h,
                              child: Text(
                                'Congratulations - your appointment is confirmed! We\'re looking forward to meeting with you and helping you achieve your goals.',
                                style: Styles.font12Regular
                                    .copyWith(color: ColorManager.grey),
                                // overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
