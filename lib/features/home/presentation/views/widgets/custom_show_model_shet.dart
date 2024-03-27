import 'package:doc_doc_app/constants.dart';
import 'package:doc_doc_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/app_text_button.dart';

class CustomShowModelButtonSheet extends StatefulWidget {
  const CustomShowModelButtonSheet({
    super.key,
  });

  @override
  State<CustomShowModelButtonSheet> createState() =>
      _CustomShowModelButtonSheetState();
}

class _CustomShowModelButtonSheetState
    extends State<CustomShowModelButtonSheet> {
  bool isChosen = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.white,
          context: context,
          builder: (context) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 14.w,
                    top: 12.h,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 58.w,
                        child: const Divider(
                          thickness: 4,
                          color: ColorManager.lightWhite,
                        ),
                      ),
                      verticalSpace(32),
                      Text(
                        'Sort By',
                        style: Styles.font18Bold.copyWith(
                          fontWeight: FontWeightHelper.semiBold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.w),
                        child: const Divider(
                          thickness: 2,
                          color: ColorManager.lighterGray,
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
                          itemCount: specialistDoctorList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  isChosen = !isChosen;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: 12.w),
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  constraints: BoxConstraints(minWidth: 65.w),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24.r),
                                      color: isChosen
                                          ? ColorManager.mainBlue
                                          : ColorManager.grey),
                                  child: Center(
                                    child: Text(
                                      specialistDoctorList[index][1],
                                      textAlign: TextAlign.center,
                                      style: Styles.font14Regular
                                          .copyWith(color: Colors.white),
                                    ),
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
                          itemCount: specialistDoctorList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  isChosen = !isChosen;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: 12.w),
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  constraints: BoxConstraints(minWidth: 65.w),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24.r),
                                      color: isChosen
                                          ? ColorManager.mainBlue
                                          : ColorManager.grey),
                                  child: Center(
                                    child: Text(
                                      specialistDoctorList[index][1],
                                      textAlign: TextAlign.center,
                                      style: Styles.font14Regular
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      verticalSpace(56),
                      Padding(
                        padding: EdgeInsets.only(right: 24.w, left: 10.w),
                        child: AppTextButton(
                          text: 'Done',
                          onPressed: () {},
                        ),
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
      child: Image.asset(
        Assets.barSort,
        width: 24.w,
        height: 24.h,
      ),
    );
  }
}
