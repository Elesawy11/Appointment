import 'package:flutter/material.dart';

import 'widget/doctor_details_body.dart';

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
