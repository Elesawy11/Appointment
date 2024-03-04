import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class EmaiAndPassowrd extends StatefulWidget {
  const EmaiAndPassowrd({super.key});

  @override
  State<EmaiAndPassowrd> createState() => _EmaiAndPassowrdState();
}

class _EmaiAndPassowrdState extends State<EmaiAndPassowrd> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: 'Email',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'please enter valide email';
            }
          },
        ),
        verticalSpace(16),
        AppTextFormField(
          hintText: 'Password',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'please enter valide email';
            }
          },
          isObscureText: isObscureText,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            icon: Icon(
              isObscureText ? Icons.visibility_off : Icons.visibility,
              color: ColorManager.mainBlue,
              size: 18.r,
            ),
          ),
        ),
      ],
    );
  }
}
