import 'package:assessment/data/repository/posts_repository.dart';
import 'package:assessment/domain/usecase/base_usecase.dart';
import 'package:get_it/get_it.dart';

import '../../entity/post/post.dart';

class AddPostUseCase extends BaseUseCase<Post, Post> {
  AddPostUseCase() : _postsRepository = GetIt.I<PostsRepository>();
  final PostsRepository _postsRepository;

  @override
  Future<Post> call(Post params) {
    return _postsRepository.addPost(params);
  }
}
