import 'package:doc_doc_app/core/utils/font_weight_helper.dart';
import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/color.dart';

class SpecialityViewBody extends StatelessWidget {
  const SpecialityViewBody({super.key});

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
                  'Doctor Speciality',
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
          child: GridView.builder(
              itemCount: specialistDoctorList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 32.h,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(
                      specialistDoctorList[index][0],
                      width: 80.w,
                      height: 80.h,
                    ),
                    verticalSpace(12),
                    Text(
                      specialistDoctorList[index][1],
                      style: Styles.font12Regular,
                    )
                  ],
                );
              }),
        )
      ],
    );
  }
}
