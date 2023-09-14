part of 'posts_cubit.dart';

enum PostsStatus { initial, loading, success, failure }

@freezed
class PostsState with _$PostsState {
  const factory PostsState({
    required PostsStatus postsStatus,
    required int userId,
    @Default([]) List<Post> posts,
    ErrorEntity? error,
  }) = _Initial;
}
