import 'package:flutter/material.dart';
import '../../data/models/doctor_model.dart';
import 'widgets/recommendation_view_body.dart';

class RecommendationView extends StatelessWidget {
  const RecommendationView({super.key, required this.doctorList});
  final List<DoctorModel> doctorList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RecommendationViewBody(
          doctorList: doctorList,
        ),
      ),
    );
  }
}
