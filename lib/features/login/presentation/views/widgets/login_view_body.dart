import 'package:doc_doc_app/core/utils/color.dart';
import 'package:doc_doc_app/core/utils/service_locator.dart';
import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:doc_doc_app/features/login/data/models/login_request.dart';
import 'package:doc_doc_app/features/login/data/repo/login_repo.dart';
import 'package:doc_doc_app/features/login/presentation/manager/login_cubit/login_cubit.dart';
import 'package:doc_doc_app/features/login/presentation/views/widgets/divider_and_text.dart';
import 'package:doc_doc_app/core/widgets/app_text_button.dart';
import 'package:doc_doc_app/features/login/presentation/views/widgets/email_and_password.dart';
import 'package:doc_doc_app/features/login/presentation/views/widgets/login_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'signup_text_widget.dart';
import 'terms_and_consdition_text.dart';
import 'welcome_login_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(getIt.get<LoginRepo>()),
      child: Builder(builder: (context) {
        LoginCubit cubit = BlocProvider.of<LoginCubit>(context);
        return SingleChildScrollView(
          child: Column(
            children: [
              const WelcomeLoginWidget(),
              verticalSpace(36),
              const EmailAndPassowrd(),
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
                onPressed: () {
                  if (context
                      .read<LoginCubit>()
                      .formKey
                      .currentState!
                      .validate()) {
                    BlocProvider.of<LoginCubit>(context).loginMethod(
                      LoginRequestBody(
                        email: context.read<LoginCubit>().emailController.text,
                        password:
                            context.read<LoginCubit>().passwordController.text,
                      ),
                    );
                  }
                },
              ),
              verticalSpace(46),
              const DividerAndText(),
              verticalSpace(60),
              const TermsAndConditionText(),
              verticalSpace(24),
              const SignUpTextWidget(),
              verticalSpace(24),
              LoginBlocListener(bloc: cubit)
            ],
          ),
        );
      }),
    );
  }
}
