import 'package:doc_doc_app/core/utils/assets.dart';
import 'package:doc_doc_app/features/home/data/models/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_doctor_image.dart';

class CustomDoctorItem extends StatelessWidget {
  const CustomDoctorItem({
    super.key,
    required this.doctorModel,
  });
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 126.h,
      width: 344.w,
      child: Stack(
        children: [
          // Container(
          //   width: 202.w,
          //   height: 75.h,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(16.r),
          //     color: Colors.white,
          //     boxShadow: const [
          //       BoxShadow(
          //         color: Colors.grey,
          //         offset: Offset(0.0, 1.0), //(x,y)
          //         blurRadius: 6.0,
          //       ),
          //     ],
          //   ),
          // ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomDoctorImage(imageUrl: Assets.doctor),
              horizontalSpace(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200.w,
                      height: 24.h,
                      child: Text(
                        'Dr. ${doctorModel.name}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.font16Semibold.copyWith(
                          color: ColorManager.darkBlue,
                          fontWeight: FontWeightHelper.bold,
                        ),
                      ),
                    ),
                    verticalSpace(8),
                    Text(
                      '${doctorModel.specialization!.name} | ${doctorModel.address}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.font12Regular.copyWith(
                        fontWeight: FontWeightHelper.medium,
                        color: ColorManager.grey,
                      ),
                    ),
                    verticalSpace(12),
                    Row(
                      children: [
                        Text(
                          '\$ ${doctorModel.appointPrice}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.font12Regular.copyWith(
                            fontWeight: FontWeightHelper.medium,
                            color: ColorManager.grey,
                          ),
                        ),
                        horizontalSpace(6),
                        Text(
                          '(${doctorModel.degree})',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.font12Regular.copyWith(
                            fontWeight: FontWeightHelper.medium,
                            color: ColorManager.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
