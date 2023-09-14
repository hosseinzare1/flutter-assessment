import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../util/network/generate_network_response.dart';
import '../../model/albums_model.dart';

class AlbumsDataSource {
  AlbumsDataSource() : _dio = GetIt.I<Dio>();

  final Dio _dio;

  Future<AlbumsModel> getAlbums(int userId) {
    var queryParameters = {"userId": userId};
    return generateNetworkResponse<AlbumsModel>(
      AlbumsModel.fromJson,
      () => _dio.get("/albums", queryParameters: queryParameters),
    );
  }
}
