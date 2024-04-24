import 'package:doc_doc_app/core/utils/color.dart';
import 'package:doc_doc_app/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.mainBlue,
      body: SafeArea(
        child: ProfileViewBody(),
      ),
    );
  }
}
