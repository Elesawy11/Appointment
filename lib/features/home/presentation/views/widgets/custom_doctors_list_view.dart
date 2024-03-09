import 'package:flutter/material.dart';

import 'custom_doctor_item.dart';

class CustomDoctorsListView extends StatelessWidget {
  const CustomDoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          clipBehavior: Clip.none,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const CustomDoctorItem();
          }),
    );
  }
}
