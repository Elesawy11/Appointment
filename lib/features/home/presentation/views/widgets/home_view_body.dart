import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:flutter/material.dart';
import 'custom_book_and_schedule_widget.dart';
import 'home_app_bar_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(12),
          const HomeAppBarWidget(),
          verticalSpace(30),
          const CustomBookAndScheduleWidget(),
        ],
      ),
    );
  }
}
