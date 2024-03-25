import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/core/widgets/custom_app_bar_widget.dart';
import 'package:doc_doc_app/features/home/data/models/doctor_model.dart';
import 'package:doc_doc_app/features/home/presentation/views/widgets/custom_doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetailsBody extends StatelessWidget {
  const DoctorDetailsBody({super.key, required this.doctorModel});
final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          const CustomAppBarWidget(text: 'Dr Randy Wigham'),
          verticalSpace(32),
          CustomDoctorItem(doctorModel: doctorModel)
        ],
      ),
    );
  }
}
