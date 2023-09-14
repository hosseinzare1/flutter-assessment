import 'package:get_it/get_it.dart';

import '../../../data/repository/posts_repository.dart';
import '../../entity/post/post.dart';
import '../base_usecase.dart';

class UpdatePostUseCase extends BaseUseCase<Post, Post> {
  UpdatePostUseCase() : _postsRepository = GetIt.I<PostsRepository>();

  final PostsRepository _postsRepository;

  @override
  Future<Post> call(Post params) {
    return _postsRepository.updatePost(params);
  }
}
