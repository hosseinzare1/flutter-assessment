import 'package:get_it/get_it.dart';

import '../../../data/repository/posts_repository.dart';
import '../../entity/post/comment.dart';
import '../base_usecase.dart';

class GetCommentsUseCase extends BaseUseCase<int, List<Comment>> {
  GetCommentsUseCase() : _postsRepository = GetIt.I<PostsRepository>();

  final PostsRepository _postsRepository;

  @override
  Future<List<Comment>> call(int params) {
    return _postsRepository.getComments(params);
  }
}
