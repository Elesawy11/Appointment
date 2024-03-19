import 'package:flutter/material.dart';

import 'widgets/doctor_details_body.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: DoctorDetailsBody(),
      ),
    );
  }
}
