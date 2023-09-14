import 'package:assessment/domain/usecase/posts/get_posts_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/entity/error_entity.dart';
import '../../../domain/entity/post/comment.dart';
import '../../../domain/entity/post/post.dart';
import '../../../domain/usecase/posts/get_comments_usecase.dart';
import '../../../util/error_handling/exception_to_error_object.dart';

part 'posts_cubit.freezed.dart';
part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit(int userId)
      : _getPostsUseCase = GetIt.I<GetPostsUseCase>(),
        _getCommentsUseCase = GetIt.I<GetCommentsUseCase>(),
        super(PostsState(
            postsStatus: PostsStatus.initial,
            commentsStatus: CommentsStatus.initial,
            userId: userId));

  final GetPostsUseCase _getPostsUseCase;
  final GetCommentsUseCase _getCommentsUseCase;

  void postsRequested() async {
    emit(state.copyWith(postsStatus: PostsStatus.loading));
    try {
      var response = await _getPostsUseCase.call(state.userId);
      emit(state.copyWith(postsStatus: PostsStatus.success, posts: response));
    } on Exception catch (exception) {
      emit(state.copyWith(
        postsStatus: PostsStatus.failure,
        error: exceptionToErrorEntity(exception),
      ));
    }
  }

  void commentsRequested(int postId) async {
    emit(state.copyWith(commentsStatus: CommentsStatus.loading));
    try {
      var response = await _getCommentsUseCase.call(postId);
      emit(
        state.copyWith(
          commentsStatus: CommentsStatus.success,
          comments: response,
        ),
      );
    } on Exception catch (exception) {
      emit(
        state.copyWith(
          commentsStatus: CommentsStatus.failure,
          error: exceptionToErrorEntity(exception),
        ),
      );
    }
  }
}
