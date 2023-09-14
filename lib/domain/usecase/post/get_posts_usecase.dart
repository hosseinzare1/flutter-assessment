import 'package:get_it/get_it.dart';

import '../../../data/repository/posts_repository.dart';
import '../../model/post/post.dart';
import '../base_usecase.dart';

class GetPostsUseCase extends BaseUseCase<void, List<Post>> {
  GetPostsUseCase() : _postsRepository = GetIt.I<PostsRepository>();

  final PostsRepository _postsRepository;

  @override
  Future<List<Post>> call(void params) {
    return _postsRepository.getPosts();
  }
}
