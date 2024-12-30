import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';

class CustomMonthWidget extends StatelessWidget {
  const CustomMonthWidget({
    super.key,
    required this.textTitle,
  });
  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textTitle,
          style: Styles.font16Semibold.copyWith(
            color: ColorManager.darkBlue,
          ),
        ),
        verticalSpace(24),
        const MediacalRecordRowWidget(
          titleText: 'End of observation',
        ),
        const MediacalRecordRowWidget(
          titleText: 'Blood Analysis',
          haveDescription: true,
          contentText:
              'red blood cell : 4.10 million cells/mcL hemogoblin : 142 grams/L hematocrit : 33.6% white blood cells : 3.850 cells/mcL',
        ),
        const MediacalRecordRowWidget(
          haveDescription: true,
          titleText: 'Blood Analysis',
          contentText:
              'red blood cell : 4.10 million cells/mcL hemogoblin : 142 grams/L hematocrit : 33.6% white blood cells : 3.850 cells/mcL',
        ),
      ],
    );
  }
}

class MediacalRecordRowWidget extends StatelessWidget {
  const MediacalRecordRowWidget({
    super.key,
    this.haveDescription = false,
    this.contentText,
    required this.titleText,
  });
  final bool haveDescription;
  final String? contentText;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Feb 25',
            style: Styles.font12Regular.copyWith(
              color: ColorManager.grey75,
            ),
          ),
          horizontalSpace(24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleText,
                style: Styles.font14Regular.copyWith(
                  color: ColorManager.darkBlue,
                  fontWeight: FontWeight.w600,
                ),
              ),
              haveDescription
                  ? SizedBox(
                      width: 207.w,
                      child: Text(
                        contentText!,
                        style: Styles.font12Regular.copyWith(
                          color: ColorManager.grey75,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  : const Center(),
            ],
          ),
        ],
      ),
    );
  }
}