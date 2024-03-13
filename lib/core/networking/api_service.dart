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
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzEwMzA3Njc0LCJleHAiOjE3MTAzMTEyNzQsIm5iZiI6MTcxMDMwNzY3NCwianRpIjoibWkyTWpGTkJ5bkVVeVdDViIsInN1YiI6IjkwMCIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.QxOTDpeWwpQntQ9lyqrZX10Ts1eISBvt32Ji6C_aVNI'
    };
    var response = await dio.get(
        '${ApiConstants.apiBaseUrl}${ApiConstants.getAllDoctor}',
        options: Options(headers: headers));
    return response.data;
  }
}
