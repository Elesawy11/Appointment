import 'package:doc_doc_app/core/utils/color.dart';
import 'package:doc_doc_app/core/utils/font_weight_helper.dart';
import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'my_appointment_completed_widget.dart';
import 'myappointment_upcoming_widget.dart';

class MyAppointmentViewBody extends StatefulWidget {
  const MyAppointmentViewBody({
    super.key,
  });

  @override
  State<MyAppointmentViewBody> createState() => _MyAppointmentViewBodyState();
}

class _MyAppointmentViewBodyState extends State<MyAppointmentViewBody>
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
          Center(
            child: Text(
              'My Appointment',
              style: Styles.font18Bold.copyWith(
                fontWeight: FontWeightHelper.semiBold,
              ),
            ),
          ),
          verticalSpace(34),
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
                            : ColorManager.grayC2,
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
                            : ColorManager.grey9E,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          verticalSpace(32),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: PageView(
              scrollDirection: Axis.horizontal,
              onPageChanged: (value) {
                currentPageIndex = value;
                setState(() {});
              },
              controller: pageViewController,
              children: const [
                MyAppointmentUpcomingWidget(),
                MyAppointmentCompletedWidget(
                  mainText: 'Appointment done',
                ),
                MyAppointmentCompletedWidget(
                  mainText: 'Appointment cancelled',
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<String> texts = [
  'Upcoming',
  'Completed',
  'Cancelled',
];
