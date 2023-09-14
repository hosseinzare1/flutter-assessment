import 'package:assessment/data/response/comments_model.dart';
import 'package:assessment/domain/model/post/comment.dart';

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
