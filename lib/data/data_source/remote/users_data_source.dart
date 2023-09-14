import 'package:assessment/data/response/users_model.dart';
import 'package:assessment/util/network/generate_network_response.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class UsersDataSource {
  UsersDataSource() : _dio = GetIt.I<Dio>();

  final Dio _dio;

  Future<UsersModel> getUsers() {
    return generateNetworkResponse<UsersModel>(
        UsersModel.fromJson, () => _dio.get("/users"));
  }
}
