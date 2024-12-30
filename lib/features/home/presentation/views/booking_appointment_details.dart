import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/booking_appointment_details_body.dart';

class BookingAppointmentDetails extends StatelessWidget {
  const BookingAppointmentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 12.h, left: 16.w, right: 16.w),
          child: const BookingAppointmentDetailsBody(),
        ),
      ),
    );
  }
}
