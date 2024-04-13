import 'package:bloc/bloc.dart';
import 'package:doc_doc_app/features/login/data/models/login_request.dart';
import 'package:doc_doc_app/features/login/data/models/login_response.dart';
import 'package:doc_doc_app/features/login/data/repo/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());
  final LoginRepo loginRepo;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Future<void> loginMethod(LoginRequestBody loginRequest) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    emit(LoginLoading());

    var response = await loginRepo.login(loginRequest);

    response.fold(
        (failure) => emit(
            LoginFailure(failure.apiErrorModel.message ?? 'unKnowen error')),
        (responseBody) async {
      pref.setBool('isLogin', true);
      emit(
        LoginSuccess(
          responseBody,
        ),
      );
    });
  }
}
