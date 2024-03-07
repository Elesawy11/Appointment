import 'package:doc_doc_app/core/utils/service_locator.dart';
import 'package:doc_doc_app/features/signup/data/repo/sign_up_repo.dart';
import 'package:doc_doc_app/features/signup/presentation/manger/sign_up_cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/signup_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(getIt.get<SignUpRepo>()),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
          ),
          child: const SignUpViewBody(),
        ),
      ),
    );
  }
}
