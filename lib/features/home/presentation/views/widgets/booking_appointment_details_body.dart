import 'package:doc_doc_app/core/routing/routes.dart';
import 'package:doc_doc_app/core/utils/assets.dart';
import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:doc_doc_app/core/widgets/app_text_button.dart';
import 'package:doc_doc_app/core/widgets/app_text_form_field.dart';
import 'package:doc_doc_app/core/widgets/custom_app_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';

class BookingAppointmentDetailsBody extends StatelessWidget {
  const BookingAppointmentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarWidget(
          text: 'Details',
        ),
        verticalSpace(60),
        SvgPicture.asset(
          Assets.bookConfirmed,
          width: 300.w,
          height: 300.h,
        ),
        verticalSpace(20),
        Text(
          'Booking Confirmed',
          style: Styles.font20Medium,
        ),
        const Spacer(),
        AppTextButton(
          text: 'Done',
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.white,
              context: context,
              builder: (context) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 14.w,
                        top: 12.h,
                        right: 14.w,
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 58.w,
                            child: const Divider(
                              thickness: 4,
                              color: ColorManager.grayED,
                            ),
                          ),
                          verticalSpace(32),
                          Text(
                            'Give Rate',
                            style: Styles.font18Bold.copyWith(
                              fontWeight: FontWeightHelper.semiBold,
                            ),
                          ),
                          verticalSpace(48),
                          RatingBar(
                            onRatingUpdate: (value) {},
                            minRating: 1,
                            maxRating: 5,
                            initialRating: 0,
                            itemSize: 33.r,
                            itemPadding: EdgeInsets.only(left: 4.w),
                            // ignoreGestures: true,
                            ratingWidget: RatingWidget(
                              full: const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              half: const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              empty: const Icon(
                                Icons.star,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          verticalSpace(33),
                          Text(
                            'Share your feedback about\n the doctor',
                            textAlign: TextAlign.center,
                            style: Styles.font16Semibold.copyWith(
                              fontWeight: FontWeightHelper.medium,
                            ),
                          ),
                          verticalSpace(24),
                          AppTextFormField(
                            backgroundColor: ColorManager.whiteE0,
                            hintText: 'Your review',
                            validator: (value) {},
                            maxLines: 3,
                          ),
                          verticalSpace(32),
                          Padding(
                            padding: EdgeInsets.only(right: 24.w, left: 10.w),
                            child: AppTextButton(
                                text: 'Done',
                                onPressed: () {
                                  context.go(Routes.homeView);
                                }),
                          ),
                          verticalSpace(40)
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
        verticalSpace(56),
      ],
    );
  }
}
