import 'package:dio/dio.dart';
import 'package:doc_doc_app/core/utils/api_keys.dart';
import 'package:doc_doc_app/features/login/data/models/login_request.dart';
import 'package:doc_doc_app/features/signup/data/models/sign_up_request_model.dart';
import 'api_constants.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> login(LoginRequestBody loginRequest) async {
    var response = await dio.post(
      '${ApiConstants.apiBaseUrl}${ApiConstants.login}',
      data: {
        'email': loginRequest.email,
        'password': loginRequest.password,
      },
    );
    return response.data;
  }

  Future<Map<String, dynamic>> signUp(SignUpRequestModel signUpRequest) async {
    var response = await dio.post(
      '${ApiConstants.apiBaseUrl}${ApiConstants.signUp}',
      data: {
        'name': signUpRequest.name,
        'email': signUpRequest.email,
        'phone': signUpRequest.phone,
        'gender': signUpRequest.gender,
        'password': signUpRequest.password,
        'password_confirmation': signUpRequest.passwordConfirmation
      },
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getAllDoctor() async {
    var headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer ${ApiKeys.token}'
    };
    var response = await dio.get(
        '${ApiConstants.apiBaseUrl}${ApiConstants.getAllDoctor}',
        options: Options(headers: headers));
    return response.data;
  }
}
