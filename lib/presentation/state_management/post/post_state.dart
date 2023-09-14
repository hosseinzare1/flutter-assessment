part of 'post_cubit.dart';

enum PostStatus { initial, loading, success, failure }

/*enum AddPostStatus { initial, loading, success, failure }

enum UpdatePostStatus { initial, loading, success, failure }

enum GetCommentsStatus { initial, loading, success, failure }*/

@freezed
class PostState with _$PostState {
  const PostState._();

  const factory PostState({
    required PostStatus postStatus,
    required Post post,
/*    required AddPostStatus addStatus,
    required UpdatePostStatus updateStatus,
    required GetCommentsStatus commentsStatus,*/
    ErrorEntity? error,
    String? titleError,
    String? bodyError,
  }) = _Initial;
}
