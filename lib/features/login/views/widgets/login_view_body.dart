import 'package:doc_doc_app/core/utils/app_text_form_field.dart';
import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'welcome_login_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            children: [
              const WelcomeLoginWidget(),
              verticalSpace(36),
              AppTextFormField(
                hintText: 'Email',
                validator: (value) {},
              ),
              verticalSpace(16),
              AppTextFormField(
                hintText: 'Password',
                validator: (value) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
