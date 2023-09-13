import 'package:assessment/util/constants.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class DependencyInjection {
  static void initDataDependencies() {
    Dio dio = Dio();
    dio.options.baseUrl = apiBaseURL;
    getIt.registerSingleton(dio);
  }
}
