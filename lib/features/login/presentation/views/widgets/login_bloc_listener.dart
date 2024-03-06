import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:doc_doc_app/features/login/presentation/manager/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

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
            ? showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    icon: const Icon(
                      Icons.error,
                      color: Colors.red,
                    ),
                    content: Text(
                      state.errMessage,
                      style: Styles.font14Regular.copyWith(
                        color: Colors.red,
                      ),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            GoRouter.of(context).pop();
                          },
                          child: Text(
                            'Go Out',
                            style:
                                Styles.font24Bold.copyWith(color: Colors.red),
                          ))
                    ],
                  );
                },
              )
            : state is LoginLoading
                ? showDialog(
                    context: context,
                    builder: (context) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      );
                    })
                : AlertDialog(
                    icon: const Icon(
                      Icons.error,
                      color: Colors.red,
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            GoRouter.of(context).pop();
                          },
                          child: Text(
                            'Go Out',
                            style:
                                Styles.font24Bold.copyWith(color: Colors.red),
                          ))
                    ],
                  );
      },
      child: const SizedBox.shrink(),
    );
  }
}
