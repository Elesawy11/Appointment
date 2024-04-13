import 'package:doc_doc_app/features/home/data/models/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/book_appointment_body.dart';

class BookAppointmentView extends StatelessWidget {
  const BookAppointmentView({super.key, required this.doctorModel});

  final DoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 12.h,
            left: 16.w,
            right: 16.w,
          ),
          child: BookAppointmentBody(
            doctorModel: doctorModel,
          ),
        ),
      ),
    );
  }
}
