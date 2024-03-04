import 'package:dio/dio.dart';
import 'package:doc_doc_app/features/login/data/models/login_request.dart';

import '../../features/login/data/models/login_response.dart';
import 'api_constants.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<LoginResopnseBody> login(LoginRequestBody loginRequest) async {
    var response =
        await dio.post('${ApiConstants.apiBaseUrl}${ApiConstants.login}');
    return response.data;
  }
}
