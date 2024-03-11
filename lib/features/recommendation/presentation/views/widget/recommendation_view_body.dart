import 'package:doc_doc_app/features/home/presentation/views/widgets/custom_doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/spacer.dart';
import 'custom_recommendation_bar.dart';
import 'recommendation_app_text_and_icon.dart';

class RecommendationViewBody extends StatelessWidget {
  const RecommendationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          verticalSpace(16),
          const CustomRecommendationBar(),
          verticalSpace(32),
          const CustomAppTextAndIcon(),
          verticalSpace(24),
          const Expanded(
            child: CustomDoctorsListView(
              clipBehavior: Clip.hardEdge,
              physics: BouncingScrollPhysics(),
            ),
          )
        ],
      ),
    );
  }
}

