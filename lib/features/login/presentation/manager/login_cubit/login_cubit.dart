import 'package:bloc/bloc.dart';
import 'package:doc_doc_app/features/login/data/models/login_request.dart';
import 'package:doc_doc_app/features/login/data/models/login_response.dart';
import 'package:doc_doc_app/features/login/data/repo/login_repo.dart';
import 'package:meta/meta.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());
  final LoginRepo loginRepo;
  Future<void> loginMethod(LoginRequestBody loginRequest) async {
    emit(LoginLoading());

    var response = await loginRepo.login(loginRequest);

    response.fold(
      (failure) =>
          emit(LoginFailure(failure.apiErrorModel.message ?? 'unKnowen error')),
      (responseBody) => emit(
        LoginSuccess(
          responseBody,
        ),
      ),
    );
  }
}
