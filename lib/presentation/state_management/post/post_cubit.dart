import 'package:assessment/domain/usecase/posts/add_post_usecase.dart';
import 'package:assessment/domain/usecase/posts/get_comments_usecase.dart';
import 'package:assessment/domain/usecase/posts/update_post_usecase.dart';
import 'package:assessment/util/error_handling/exception_to_error_object.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/entity/error_entity.dart';
import '../../../domain/entity/post/comment.dart';
import '../../../domain/entity/post/post.dart';

part 'post_cubit.freezed.dart';
part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit(Post? post)
      : _updatePostUseCase = GetIt.I<UpdatePostUseCase>(),
        _addPostUseCase = GetIt.I<AddPostUseCase>(),
        _getCommentsUseCase = GetIt.I<GetCommentsUseCase>(),
        super(PostState(
            post: post ?? const Post(), postStatus: PostStatus.initial));

  final AddPostUseCase _addPostUseCase;
  final UpdatePostUseCase _updatePostUseCase;
  final GetCommentsUseCase _getCommentsUseCase;

  void updatePostRequested() async {
    emit(state.copyWith(postStatus: PostStatus.loading));
    try {
      var response = await _updatePostUseCase.call(state.post);
      emit(state.copyWith(postStatus: PostStatus.success, post: response));
    } on Exception catch (exception) {
      emit(
        state.copyWith(
          postStatus: PostStatus.failure,
          error: exceptionToErrorEntity(exception),
        ),
      );
    }
  }

  void addPostRequested() async {
    emit(state.copyWith(postStatus: PostStatus.loading));
    try {
      var response = await _addPostUseCase.call(state.post);
      emit(state.copyWith(postStatus: PostStatus.success, post: response));
    } on Exception catch (exception) {
      emit(
        state.copyWith(
          postStatus: PostStatus.failure,
          error: exceptionToErrorEntity(exception),
        ),
      );
    }
  }

  void commentsRequested() async {
    emit(state.copyWith(postStatus: PostStatus.loading));
    try {
      var response = await _getCommentsUseCase.call(state.post.id);
      emit(state.copyWith(postStatus: PostStatus.success, comments: response));
    } on Exception catch (exception) {
      emit(
        state.copyWith(
          postStatus: PostStatus.failure,
          error: exceptionToErrorEntity(exception),
        ),
      );
    }
  }

  void titleChanged(String title) {
    emit(state.copyWith.post(title: title));
  }

  void bodyChanged(String body) {
    emit(state.copyWith.post(body: body));
  }
}
