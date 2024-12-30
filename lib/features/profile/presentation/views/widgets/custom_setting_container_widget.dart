import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';

class CustomSettingContainerWidget extends StatelessWidget {
  const CustomSettingContainerWidget({
    super.key,
    required this.text,
    required this.image,
    this.color,
    this.onTap,
  });
  final String text, image;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 327.w,
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: ColorManager.grayED,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: Row(
              children: [
                SvgPicture.asset(
                  image,
                ),
                horizontalSpace(12),
                Text(
                  text,
                  style: Styles.font14Regular.copyWith(
                    color: color ?? ColorManager.darkBlue,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  color: ColorManager.darkBlue,
                  size: 14.r,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
