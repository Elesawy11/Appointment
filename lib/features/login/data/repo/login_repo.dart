import 'package:dartz/dartz.dart';
import 'package:doc_doc_app/core/networking/api_error_handler.dart';
import 'package:doc_doc_app/core/networking/api_service.dart';
import 'package:doc_doc_app/features/login/data/models/login_request.dart';
import 'package:doc_doc_app/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<Either<ErrorHandler, LoginResopnseBody>> login(
      LoginRequestBody loginRequest) async {
    try {
      var response = await _apiService.login(loginRequest);

      return right(
        LoginResopnseBody.fromJson(
          response,
        ),
      );
    } catch (e) {
      return left(
        ErrorHandler.handle(e),
      );
    }
  }
}
