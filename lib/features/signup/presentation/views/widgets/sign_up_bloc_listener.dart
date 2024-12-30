import 'package:doc_doc_app/features/signup/presentation/manger/sign_up_cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/styles.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) {
        return current is SignUpLoading ||
            current is SignUpFailure ||
            current is SignUpSuccess;
      },
      listener: (context, state) {
        state is SignUpFailure
            ? loginFailureAction(context, state)
            : state is SignUpLoading
                ? showDialog(
                    context: context,
                    builder: (context) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      );
                    },
                  )
                : {
                    context.pop(),
                    context.go(Routes.homeView),
                  };
      },
      child: const SizedBox.shrink(),
    );
  }

  Future<dynamic> loginFailureAction(
      BuildContext context, SignUpFailure state) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: const Icon(
            Icons.error,
            color: Colors.red,
          ),
          content: Text(
            state.errMessage,
            style: Styles.font14Regular,
          ),
          actions: [
            TextButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                  GoRouter.of(context).pop();
                },
                child: Text(
                  'Got it',
                  style: Styles.font14Regular.copyWith(
                      color: ColorManager.mainBlue,
                      fontWeight: FontWeightHelper.semiBold),
                ))
          ],
        );
      },
    );
  }
}
