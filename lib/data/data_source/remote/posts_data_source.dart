import 'package:assessment/util/network/generate_network_response.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../model/comments_model.dart';
import '../../model/posts_model.dart';

class PostsDataSource {
  PostsDataSource() : _dio = GetIt.I<Dio>();

  final Dio _dio;

  Future<PostsModel> getPosts(int postId) {
    var queryParameters = {"postId": postId};
    return generateNetworkResponse<PostsModel>(
      PostsModel.fromJson,
      () => _dio.get("/posts", queryParameters: queryParameters),
    );
  }

  Future<PostModel> addPost(PostModel postModel) {
    var body = postModel.toJson();
    return generateNetworkResponse<PostModel>(
      PostModel.fromJson,
      () => _dio.post("/posts", data: body),
    );
  }

  Future<PostModel> updatePost(PostModel postModel) {
    var body = postModel.toJson();
    return generateNetworkResponse<PostModel>(
      PostModel.fromJson,
      () => _dio.put("/posts", data: body),
    );
  }

  Future<CommentsModel> getComments(int postID) {
    return generateNetworkResponse<CommentsModel>(
      CommentsModel.fromJson,
      () => _dio.get("/posts/$postID/comments"),
    );
  }
}
