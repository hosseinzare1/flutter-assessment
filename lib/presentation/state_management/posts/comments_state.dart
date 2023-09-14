part of 'comments_cubit.dart';

enum CommentsStatus { initial, loading, success, failure }

@freezed
class CommentsState with _$CommentsState {
  const factory CommentsState({
    required CommentsStatus commentsStatus,
    required int postId,
    @Default([]) List<Comment> comments,
    ErrorEntity? error,
  }) = _Initial;
}
