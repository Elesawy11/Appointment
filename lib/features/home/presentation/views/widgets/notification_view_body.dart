import 'package:doc_doc_app/core/utils/assets.dart';
import 'package:doc_doc_app/core/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        const CustomAppBarWidget(text: 'Notification'),
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
                          Assets.calendarTick,
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
