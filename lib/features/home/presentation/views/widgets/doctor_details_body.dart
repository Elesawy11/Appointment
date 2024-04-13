import 'package:doc_doc_app/core/routing/routes.dart';
import 'package:doc_doc_app/core/utils/assets.dart';
import 'package:doc_doc_app/core/utils/color.dart';
import 'package:doc_doc_app/core/utils/font_weight_helper.dart';
import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:doc_doc_app/core/widgets/app_text_button.dart';
import 'package:doc_doc_app/core/widgets/custom_app_bar_widget.dart';
import 'package:doc_doc_app/features/home/data/models/doctor_model.dart';
import 'package:doc_doc_app/features/home/presentation/views/widgets/custom_doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'custom_doctor_definition.dart';

class DoctorDetailsBody extends StatefulWidget {
  const DoctorDetailsBody({super.key, required this.doctorModel});
  final DoctorModel doctorModel;

  @override
  State<DoctorDetailsBody> createState() => _DoctorDetailsBodyState();
}

class _DoctorDetailsBodyState extends State<DoctorDetailsBody>
    with TickerProviderStateMixin {
  late PageController pageViewController;

  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageViewController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      child: Column(
        children: [
          const CustomAppBarWidget(text: 'Dr Randy Wigham'),
          verticalSpace(32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 80.h,
                width: MediaQuery.of(context).size.width * 0.75,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: CustomDoctorItem(
                    doctorModel: widget.doctorModel,
                  ),
                ),
              ),
              SvgPicture.asset(
                Assets.message,
                width: 24.w,
                height: 24.h,
                colorFilter: const ColorFilter.mode(
                  ColorManager.mainBlue,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
          verticalSpace(24),
          SizedBox(
            height: 44.h,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: texts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: currentPageIndex == index
                            ? ColorManager.mainBlue
                            : ColorManager.lightGray,
                        width: 2,
                      ),
                    ),
                  ),
                  width: 110.w,
                  height: 44.h,
                  child: Center(
                    child: Text(
                      texts[index],
                      style: Styles.font14Regular.copyWith(
                        fontWeight: FontWeightHelper.bold,
                        color: currentPageIndex == index
                            ? ColorManager.mainBlue
                            : ColorManager.greyOpacity,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          verticalSpace(32),
          SizedBox(
            height: 497.h,
            child: PageView(
              scrollDirection: Axis.horizontal,
              onPageChanged: (value) {
                currentPageIndex = value;
                setState(() {});
              },
              controller: pageViewController,
              children: [
                CustomDoctorDefinition(
                  doctorModel: widget.doctorModel,
                ),
                const DoctorLocation(),
                const DoctorReviews()
              ],
            ),
          ),
          const Spacer(),
          AppTextButton(
            text: 'Make An Appointment',
            onPressed: () => context.push(
              '${Routes.recommendationView}/${Routes.bookAppointmentView}',
              extra: widget.doctorModel,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
