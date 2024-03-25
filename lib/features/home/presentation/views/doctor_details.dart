import 'package:doc_doc_app/features/home/data/models/doctor_model.dart';
import 'package:flutter/material.dart';

import 'widgets/doctor_details_body.dart';

class DoctorDetailsView extends StatelessWidget {
  const DoctorDetailsView({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DoctorDetailsBody(
          doctorModel: doctorModel,
        ),
      ),
    );
  }
}
