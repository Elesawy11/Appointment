import 'package:doc_doc_app/constants.dart';
import 'package:doc_doc_app/core/widgets/app_text_button.dart';
import 'package:doc_doc_app/core/widgets/app_text_form_field.dart';
import 'package:doc_doc_app/features/home/presentation/views/widgets/custom_doctors_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';

class RecommendationViewBody extends StatelessWidget {
  const RecommendationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          verticalSpace(16),
          const CustomRecommendationBar(),
          verticalSpace(32),
          const CustomAppTextAndIcon(),
          verticalSpace(24),
          const CustomDoctorsListView(
            clipBehavior: Clip.hardEdge,
            physics: BouncingScrollPhysics(),
          )
        ],
      ),
    );
  }
}

class CustomAppTextAndIcon extends StatelessWidget {
  const CustomAppTextAndIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 300.w,
          child: AppTextFormField(
            contentPadding: EdgeInsets.only(left: 18.w, right: 12.w),
            backgroundColor: ColorManager.whiteOpacity,
            hintText: 'search',
            validator: (value) {},
            prefixIcon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: ColorManager.lightGray,
            ),
          ),
        ),
        horizontalSpace(12),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              backgroundColor: Colors.white,
              context: context,
              builder: (context) {
                return SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 14.w,
                            top: 34.h,
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Container(
                                height: 4.h,
                                width: 59.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.r),
                                    color: ColorManager.whiteOpacity),
                              ),
                              verticalSpace(32),
                              Text(
                                'Sort By',
                                style: Styles.font18Bold.copyWith(
                                  fontWeight: FontWeightHelper.semiBold,
                                ),
                              ),
                              verticalSpace(32),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Speciality',
                                  style: Styles.font16Semibold.copyWith(
                                    fontWeight: FontWeightHelper.medium,
                                  ),
                                ),
                              ),
                              verticalSpace(24),
                              SizedBox(
                                height: 42.h,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(left: 12.w),
                                      child: Container(
                                        constraints:
                                            BoxConstraints(minWidth: 65.w),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24.r),
                                            color: ColorManager.mainBlue),
                                        child: Center(
                                          child: Text(
                                            'All',
                                            textAlign: TextAlign.center,
                                            style: Styles.font14Regular
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              verticalSpace(24),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Rating',
                                  style: Styles.font16Semibold.copyWith(
                                    fontWeight: FontWeightHelper.medium,
                                  ),
                                ),
                              ),
                              verticalSpace(24),
                              SizedBox(
                                height: 42.h,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(left: 12.w),
                                      child: Container(
                                        width: 65.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24.r),
                                            color: ColorManager.mainBlue),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              size: 16.r,
                                              FontAwesomeIcons.solidStar,
                                              color: Colors.white,
                                            ),
                                            Center(
                                              child: Text(
                                                'All',
                                                style: Styles.font14Regular
                                                    .copyWith(
                                                        color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              verticalSpace(32),
                              Padding(
                                padding:
                                    EdgeInsets.only(right: 24.w, left: 10.w),
                                child: AppTextButton(
                                  text: 'Done',
                                  onPressed: () {},
                                ),
                              ),
                              verticalSpace(40)
                            ],
                          ),
                        )));
              },
            );
          },
          child: Image.asset(
            barSort,
            width: 24.w,
            height: 24.h,
          ),
        )
      ],
    );
  }
}

class CustomRecommendationBar extends StatelessWidget {
  const CustomRecommendationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
            'Recommendation Doctor',
            textAlign: TextAlign.center,
            style: Styles.font18Bold.copyWith(
              fontWeight: FontWeightHelper.semiBold,
            ),
          ),
        )
      ],
    );
  }
}
