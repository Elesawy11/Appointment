import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_doctor_definition.dart';

class DateAndTimeWidget extends StatefulWidget {
  const DateAndTimeWidget({
    super.key,
  });

  @override
  State<DateAndTimeWidget> createState() => _DateAndTimeWidgetState();
}

int currentDate = 0;
int currentTime = 0;
int isActive = 0;

class _DateAndTimeWidgetState extends State<DateAndTimeWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 625.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextTitle(text: 'Select Date'),
                Text(
                  'Set Manual',
                  style: Styles.font12Regular.copyWith(
                    color: ColorManager.mainBlue,
                    fontWeight: FontWeightHelper.medium,
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(24),
          SizedBox(
            height: 62.h,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: weekDays.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: GestureDetector(
                    onTap: () {
                      currentDate = index;
                      setState(() {});
                    },
                    child: Container(
                      width: currentDate == index ? 55.w : 43.w,
                      height: currentDate == index ? 62.h : 48.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: currentDate == index
                            ? ColorManager.mainBlue
                            : ColorManager.grayED,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              weekDays[index][1],
                              style: Styles.font12Regular.copyWith(
                                fontWeight: FontWeightHelper.medium,
                                color: currentDate == index
                                    ? Colors.white
                                    : ColorManager.grayC2,
                              ),
                            ),
                            Text(
                              weekDays[index][0],
                              style: Styles.font12Regular.copyWith(
                                fontWeight: FontWeightHelper.medium,
                                color: currentDate == index
                                    ? Colors.white
                                    : ColorManager.grayC2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          verticalSpace(16),
          const TextTitle(text: 'Available time'),
          verticalSpace(16),
          SizedBox(
            width: 326.w,
            height: 170.h,
            child: GridView.builder(
              padding: EdgeInsets.zero,
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10.h,
                crossAxisSpacing: 10.w,
                crossAxisCount: 2,
                mainAxisExtent: 50.h,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    currentTime = index;
                    setState(() {});
                  },
                  child: Container(
                    width: 158.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      color: currentTime == index
                          ? ColorManager.mainBlue
                          : ColorManager.grayED,
                    ),
                    child: Center(
                      child: Text(
                        '08.00 AM',
                        style: Styles.font14Regular.copyWith(
                          fontWeight: FontWeightHelper.medium,
                          color: ColorManager.grayC2,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          verticalSpace(24),
          const TextTitle(text: 'Appointment Type'),
          verticalSpace(16),
          SizedBox(
            height: 200.h,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: appointmentType.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: ColorManager.grayED,
                      ),
                    ),
                  ),
                  height: 56.h,
                  child: ListTile(
                    dense: true,
                    leading: Image.asset(
                      appointmentType[index][0],
                      width: 40.w,
                      height: 40.h,
                    ),
                    title: Text(
                      appointmentType[index][1],
                      style: Styles.font14Regular,
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        isActive = index;
                        setState(() {});
                      },
                      child: Container(
                          width: 20.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              color: ColorManager.mainBlue,
                            ),
                          ),
                          child: isActive == index
                              ? Icon(
                                  Icons.circle,
                                  size: 10.r,
                                  color: ColorManager.mainBlue,
                                )
                              : null),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<List<String>> weekDays = [
  ['01', 'Sat'],
  ['02', 'Sun'],
  ['03', 'Mon'],
  ['04', 'Tue'],
  ['05', 'Wed'],
  ['06', 'Thu'],
  ['07', 'Fri'],
];

List<List<String>> appointmentType = [
  [Assets.inperson, 'In Person'],
  [Assets.video, 'Video Call'],
  [Assets.call, 'Phone Call'],
];
