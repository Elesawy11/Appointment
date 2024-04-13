import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class CustomAppTextAndIcon extends StatelessWidget {
  const CustomAppTextAndIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 300.w,
          child: AppTextFormField(
            contentPadding: EdgeInsets.only(left: 18.w, right: 12.w),
            backgroundColor: ColorManager.whiteOpacity,
            hintText: 'search',
            validator: (value) {},
            prefixIcon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: ColorManager.lightGray,
            ),
          ),
        ),
      ],
    );
  }
}
