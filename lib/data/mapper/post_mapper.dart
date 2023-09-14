import '../../domain/entity/post/post.dart';
import '../model/posts_model.dart';

class PostMapper {
  static Post mapFromModel(PostModel response) {
    return Post(
        userId: response.userId?.toInt() ?? 0,
        id: response.id?.toInt() ?? 0,
        title: response.title ?? "empty",
        body: response.body ?? "empty");
  }

  static PostModel mapToModel(Post post) {
    return PostModel(
      userId: post.userId,
      id: post.id,
      title: post.title,
      body: post.body,
    );
  }
}
