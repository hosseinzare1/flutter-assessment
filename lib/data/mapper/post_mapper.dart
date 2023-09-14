import 'package:assessment/data/response/posts_model.dart';
import 'package:assessment/domain/model/post/post.dart';

class PostMapper {
  static Post map(PostModel response) {
    return Post(
        userId: response.userId?.toInt() ?? 0,
        id: response.id?.toInt() ?? 0,
        title: response.title ?? "empty",
        body: response.body ?? "empty");
  }
}
