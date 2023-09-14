import 'package:get_it/get_it.dart';

import '../../../data/repository/posts_repository.dart';
import '../../entity/post/post.dart';
import '../base_usecase.dart';

class GetPostsUseCase extends BaseUseCase<int, List<Post>> {
  GetPostsUseCase() : _postsRepository = GetIt.I<PostsRepository>();

  final PostsRepository _postsRepository;

  @override
  Future<List<Post>> call(int params) {
    return _postsRepository.getPosts(params);
  }
}
