part of 'posts_cubit.dart';

enum PostsStatus { initial, loading, success, failure }

enum CommentsStatus { initial, loading, success, failure }

@freezed
class PostsState with _$PostsState {
  const factory PostsState({
    required PostsStatus postsStatus,
    required CommentsStatus commentsStatus,
    required int userId,
    @Default([]) List<Post> posts,
    @Default([]) List<Comment> comments,
    ErrorEntity? error,
  }) = _Initial;
}
