import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/custom_doctor_definition.dart';
import 'profile_view_body.dart';

class CustomProfileStackBody extends StatelessWidget {
  const CustomProfileStackBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 620.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.r),
              topRight: Radius.circular(24.r),
            ),
          ),
        ),
        Positioned(
          top: -60.h,
          left: 0,
          right: 0,
          child: Image.asset(
            Assets.profile,
            width: 120.w,
            height: 120.h,
          ),
        ),
        Positioned(
          top: 30.h,
          left: MediaQuery.of(context).size.width * 0.55,
          child: CircleAvatar(
            radius: 16.r,
            backgroundColor: ColorManager.grayED,
            child: SvgPicture.asset(
              Assets.editProfile,
              width: 20.w,
              height: 20.h,
            ),
          ),
        ),
        Positioned(
          top: (60 + 32).h,
          left: 0,
          right: 0,
          child: Column(
            children: [
              const TextTitle(
                text: 'Ahmed Elesawy',
              ),
              verticalSpace(8),
              const TextSubTitle(
                text: 'ahmedElesawy@gmail.com',
              ),
              verticalSpace(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: ColorManager.grayED,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.r),
                        bottomLeft: Radius.circular(16.r),
                      ),
                      border: const Border(
                        right: BorderSide(
                          color: ColorManager.grayC2,
                        ),
                      ),
                    ),
                    width: 163.w,
                    height: 58.h,
                    child: Center(
                      child: Text(
                        'My Appointmetn',
                        style: Styles.font12Regular.copyWith(
                          color: ColorManager.darkBlue,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16.r),
                        bottomRight: Radius.circular(16.r),
                      ),
                      color: ColorManager.grayED,
                    ),
                    width: 163.w,
                    height: 58.h,
                    child: Center(
                      child: Text(
                        'Medical records',
                        style: Styles.font12Regular.copyWith(
                          color: ColorManager.darkBlue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpace(24),
              SizedBox(
                height: 260.h,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: profileFeatures.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: 16.h,
                        left: 24.w,
                        right: 24.w,
                      ),
                      child: GestureDetector(
                        onTap: () => context.push(
                          profileFeatures[index][2],
                        ),
                        child: Container(
                          width: 327.w,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: ColorManager.grayED,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.h),
                            child: ListTile(
                              dense: true,
                              leading: SvgPicture.asset(
                                profileFeatures[index][0],
                              ),
                              title: Text(
                                profileFeatures[index][1],
                                style: Styles.font14Regular.copyWith(
                                  color: ColorManager.darkBlue,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}