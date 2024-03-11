import 'package:flutter/material.dart';

import 'custom_doctor_item.dart';

class CustomDoctorsListView extends StatelessWidget {
  const CustomDoctorsListView({super.key, this.clipBehavior, this.physics});
final Clip? clipBehavior;
final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          clipBehavior:clipBehavior?? Clip.none,
          padding: EdgeInsets.zero,
          physics:physics?? const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const CustomDoctorItem();
          }),
    );
  }
}
