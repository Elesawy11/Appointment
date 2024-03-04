import 'package:dio/dio.dart';
import 'package:doc_doc_app/features/login/data/models/login_request.dart';

import '../../features/login/data/models/login_response.dart';

class ApiService {
  final String _baseUrl = 'https://vcare.integration25.com/api/';
  final Dio dio;

  ApiService(this.dio);

  Future<LoginResopnseBody> login(LoginRequestBody loginRequest) async {
    var response = await dio.post('${_baseUrl}auth/login');
    return response.data;
  }
}
