import 'package:doc_doc_app/core/utils/color.dart';
import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:doc_doc_app/features/login/presentation/views/widgets/divider_and_text.dart';
import 'package:doc_doc_app/core/widgets/app_text_button.dart';
import 'package:doc_doc_app/features/login/presentation/views/widgets/email_and_password.dart';
import 'package:doc_doc_app/features/login/presentation/views/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'signup_text_widget.dart';
import 'terms_and_consdition_text.dart';
import 'welcome_login_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const WelcomeLoginWidget(),
          verticalSpace(36),
          const EmaiAndPassowrd(),
          verticalSpace(24),
          const PasswordValidations(
              hasLowerCase: false,
              hasUpperCase: false,
              hasSpecialCharacters: false,
              hasNumber: false,
              hasMinLength: false),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot Password?',
              style: Styles.font12Regular.copyWith(
                color: ColorManager.mainBlue,
              ),
            ),
          ),
          verticalSpace(32),
          AppTextButton(
            text: 'Login',
            onPressed: () {},
          ),
          verticalSpace(46),
          const DividerAndText(),
          verticalSpace(60),
          const TermsAndConditionText(),
          verticalSpace(24),
          const SignUpTextWidget(),
        ],
      ),
    );
  }
}
