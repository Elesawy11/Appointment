import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:doc_doc_app/core/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../constants.dart';

class SpecialityViewBody extends StatelessWidget {
  const SpecialityViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(12),
        const CustomAppBarWidget(text: 'Doctor Speciality'),
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
