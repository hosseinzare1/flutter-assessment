import 'package:assessment/data/data_source/remote/interceptor.dart';
import 'package:assessment/data/data_source/remote/posts_data_source.dart';
import 'package:assessment/data/data_source/remote/users_data_source.dart';
import 'package:assessment/data/repository/posts_repository.dart';
import 'package:assessment/data/repository/users_repository.dart';
import 'package:assessment/domain/usecase/users/get_users_usecase.dart';
import 'package:assessment/util/constants.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../domain/usecase/posts/add_post_usecase.dart';
import '../domain/usecase/posts/get_comments_usecase.dart';
import '../domain/usecase/posts/get_posts_usecase.dart';
import '../domain/usecase/posts/update_post_usecase.dart';

final getIt = GetIt.instance;

class DependencyInjection {
  static void initDataDependencies() {
    Dio dio = Dio();
    dio.options.baseUrl = apiBaseURL;
    dio.interceptors.add(CustomInterceptors());
    getIt.registerSingleton(dio);
  }

  static void initUserDependencies() {
    getIt.registerSingleton(UsersDataSource());
    getIt.registerSingleton(UsersRepository());
    getIt.registerSingleton(UsersUseCase());
  }

  static void initPostsDependencies() {
    getIt.registerSingleton(PostsDataSource());
    getIt.registerSingleton(PostsRepository());
    getIt.registerSingleton(GetPostsUseCase());
    getIt.registerSingleton(AddPostUseCase());
    getIt.registerSingleton(UpdatePostUseCase());
    getIt.registerSingleton(GetCommentsUseCase());
  }
}
