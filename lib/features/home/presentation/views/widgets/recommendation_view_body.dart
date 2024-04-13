import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/widgets/custom_app_bar_widget.dart';
import '../../../data/models/doctor_model.dart';
import 'custom_doctor_item.dart';
import 'recommendation_app_text_and_icon.dart';

class RecommendationViewBody extends StatelessWidget {
  const RecommendationViewBody({super.key, required this.doctorList});
  final List<DoctorModel> doctorList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          verticalSpace(16),
          const CustomAppBarWidget(
            text: 'Recommendation Doctor',
          ),
          verticalSpace(32),
          const CustomAppTextAndIcon(),
          verticalSpace(24),
          Expanded(
              child: Expanded(
            child: ListView.builder(
                clipBehavior: Clip.hardEdge,
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                itemCount: doctorList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => context.push('${Routes.recommendationView}/${Routes.doctorDetailsView}',
                        extra: doctorList[index]),
                    child: CustomDoctorItem(
                      doctorModel: doctorList[index],
                    ),
                  );
                }),
          ))
        ],
      ),
    );
  }
}
