import 'package:assessment/data/data_source/remote/posts_data_source.dart';
import 'package:assessment/data/mapper/post_mapper.dart';
import 'package:get_it/get_it.dart';

import '../../domain/entity/post/comment.dart';
import '../../domain/entity/post/post.dart';
import '../mapper/comment_mapper.dart';

class PostsRepository {
  PostsRepository() : _postsDataSource = GetIt.I<PostsDataSource>();

  final PostsDataSource _postsDataSource;

  Future<List<Post>> getPosts(int userId) async {
    var response = await _postsDataSource.getPosts(userId);
    return response.posts
            ?.map((post) => PostMapper.mapFromModel(post))
            .toList() ??
        [];
  }

  Future<Post> addPost(Post post) async {
    var response = await _postsDataSource.addPost(PostMapper.mapToModel(post));
    return PostMapper.mapFromModel(response);
  }

  Future<Post> updatePost(Post post) async {
    var response =
        await _postsDataSource.updatePost(PostMapper.mapToModel(post));
    return PostMapper.mapFromModel(response);
  }

  Future<List<Comment>> getComments(int postId) async {
    var response = await _postsDataSource.getComments(postId);
    return response.comments
            ?.map((comment) => CommentMapper.mapFromModel(comment))
            .toList() ??
        [];
  }
}
