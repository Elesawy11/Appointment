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
    return GestureDetector(
      onTap: (){
        
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.17,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomDoctorImage(
              imageUrl:
                  'https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*',
            ),
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
      ),
    );
  }
}
