import 'package:doc_doc_app/features/home/presentation/views/widgets/speciality_view_body.dart';
import 'package:flutter/material.dart';

class SpecialityView extends StatelessWidget {
  const SpecialityView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SpecialityViewBody(),
      ),
    );
  }
}
