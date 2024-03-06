import 'package:dio/dio.dart';
import 'package:doc_doc_app/features/login/data/models/login_request.dart';
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
}
