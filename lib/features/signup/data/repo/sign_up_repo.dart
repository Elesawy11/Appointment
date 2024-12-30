import 'package:dartz/dartz.dart';
import 'package:doc_doc_app/core/networking/api_error_handler.dart';
import 'package:doc_doc_app/core/networking/api_service.dart';
import 'package:doc_doc_app/features/signup/data/models/sign_up_request_model.dart';
import 'package:doc_doc_app/features/signup/data/models/sign_up_response_model.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);

  Future<Either<ErrorHandler, SignUpResponseModel>> signUp(
      {required SignUpRequestModel signUpRequest}) async {
    try {
      var response = await _apiService.signUp(signUpRequest);
      return right(
        SignUpResponseModel.fromJson(response),
      );
    } catch (e) {
      return left(
        ErrorHandler.handle(e),
      );
    }
  }
}
