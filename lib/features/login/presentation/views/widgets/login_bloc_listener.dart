import 'package:doc_doc_app/core/utils/color.dart';
import 'package:doc_doc_app/core/utils/font_weight_helper.dart';
import 'package:doc_doc_app/core/utils/routes.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:doc_doc_app/features/login/presentation/manager/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key, required this.bloc});
  final LoginCubit bloc;
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) {
        return current is LoginLoading ||
            current is LoginFailure ||
            current is LoginSuccess;
      },
      listener: (context, state) {
        state is LoginFailure
            ? loginFailureAction(context, state)
            : state is LoginLoading
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
                    GoRouter.of(context).pop(),
                    context.go(Routes.homeView),
                  };
      },
      child: const SizedBox.shrink(),
    );
  }

  Future<dynamic> loginFailureAction(BuildContext context, LoginFailure state) {
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
