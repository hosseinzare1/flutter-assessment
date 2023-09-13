import 'package:assessment/data/response/users_response.dart';
import 'package:assessment/util/network/generate_network_response.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class UsersDataSource {
  UsersDataSource() : _dio = GetIt.I<Dio>();

  final Dio _dio;

  Future<UsersResponse> getUsers() {
    return generateNetworkResponse<UsersResponse>(
        UsersResponse.fromJson, () => _dio.get("/users"));
  }
}
