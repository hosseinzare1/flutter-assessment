part of 'post_cubit.dart';

enum PostStatus { initial, loading, success, failure }

@freezed
class PostState with _$PostState {
  const PostState._();

  const factory PostState({
    required PostStatus postStatus,
    required Post post,
    ErrorEntity? error,
    String? titleError,
    String? bodyError,
  }) = _Initial;
}
