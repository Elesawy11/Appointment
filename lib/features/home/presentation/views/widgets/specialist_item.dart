import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';

class SpecialistItem extends StatelessWidget {
  const SpecialistItem({super.key, required this.specialistDoctorList});
  final List<dynamic> specialistDoctorList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.w),
      child: Column(
        children: [
          Image.asset(
            specialistDoctorList[0],
            width: 56.w,
            height: 56.h,
          ),
          verticalSpace(8),
          Text(
            specialistDoctorList[1],
            style: Styles.font12Regular,
          )
        ],
      ),
    );
  }
}
