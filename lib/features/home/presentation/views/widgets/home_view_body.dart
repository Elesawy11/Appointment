import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:flutter/material.dart';
import 'custom_book_and_schedule_widget.dart';
import 'custom_doctor_item.dart';
import 'custom_specialist_lis_view.dart';
import 'custom_text_and_textButton.dart';
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
          verticalSpace(23),
          CustomTextAndTextButton(
            text: 'Doctor Speciality',
            onPressed: () {},
          ),
          verticalSpace(16),
          const CustomSpecialistListView(),
          verticalSpace(23),
          CustomTextAndTextButton(
            text: 'Recommendation Doctor',
            onPressed: () {},
          ),
          verticalSpace(12),
          const CustomDoctorItem()
        ],
      ),
    );
  }
}
