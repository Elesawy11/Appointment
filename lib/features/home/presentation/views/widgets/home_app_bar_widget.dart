import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar!',
              style: Styles.font18Bold.copyWith(
                color: ColorManager.darkBlue,
              ),
            ),
            Text(
              'How Are you Today?',
              style:
                  Styles.font12Regular.copyWith(color: ColorManager.hardGrey),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              color: ColorManager.whiteOpacity),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.bell,
            ),
          ),
        )
      ],
    );
  }
}
