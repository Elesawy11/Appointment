import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/features/home/presentation/views/widgets/custom_show_model_shet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            backgroundColor: ColorManager.whiteF5,
            hintText: 'search',
            validator: (value) {},
            prefixIcon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: ColorManager.grayC2,
            ),
          ),
        ),
        horizontalSpace(12),
        const CustomShowModelButtonSheet(),
      ],
    );
  }
}
