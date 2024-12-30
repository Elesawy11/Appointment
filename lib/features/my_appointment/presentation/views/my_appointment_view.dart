import 'package:flutter/material.dart';

import 'widgets/my_appointment_view_body.dart';

class MyAppointmentView extends StatelessWidget {
  const MyAppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: MyAppointmentViewBody(),
      ),
    );
  }
}
