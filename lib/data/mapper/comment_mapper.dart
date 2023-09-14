import '../../domain/entity/post/comment.dart';
import '../model/comments_model.dart';

class CommentMapper {
  static Comment mapFromModel(CommentModel commentModel) {
    return Comment(
        postId: commentModel.postId?.toInt() ?? 0,
        id: commentModel.id?.toInt() ?? 0,
        name: commentModel.name ?? "empty",
        email: commentModel.email ?? "empty",
        body: commentModel.body ?? "empty");
  }
}
