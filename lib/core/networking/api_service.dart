import 'package:dio/dio.dart';
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
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzEwMTg5ODI5LCJleHAiOjE3MTAxOTM0MjksIm5iZiI6MTcxMDE4OTgyOSwianRpIjoiWXhjRnQxQjc0amo0bGdZeiIsInN1YiI6IjkwMCIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Vl8uzzQVNTGW93J7LsRnI3Vdlk_rt1pi1OIVe9K9zlI'
    };
    var response = await dio.get(
        '${ApiConstants.apiBaseUrl}${ApiConstants.getAllDoctor}',
        options: Options(headers: headers));
    return response.data;
  }
}
