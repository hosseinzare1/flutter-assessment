import 'package:assessment/data/data_source/remote/users_data_source.dart';
import 'package:assessment/data/repository/users_repository.dart';
import 'package:assessment/domain/usecase/users_usecase.dart';
import 'package:assessment/util/constants.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class DependencyInjection {
  static void initDataDependencies() {
    Dio dio = Dio();
    dio.options.baseUrl = apiBaseURL;
    getIt.registerSingleton(dio);
    getIt.registerSingleton(UsersDataSource());
    getIt.registerSingleton(UsersRepository());
    getIt.registerSingleton(UsersUseCase());
  }
}
