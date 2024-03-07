import 'package:dio/dio.dart';
import 'package:doc_doc_app/core/networking/api_service.dart';
import 'package:doc_doc_app/core/networking/dio_factory.dart';
import 'package:doc_doc_app/features/login/data/repo/login_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(
    () => ApiService(
      dio,
    ),
  );

  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(
      getIt.get<ApiService>(),
    ),
  );
}
