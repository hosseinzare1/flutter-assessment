import 'package:assessment/domain/entity/general/error_entity.dart';
import 'package:assessment/domain/entity/post/post.dart';
import 'package:assessment/domain/usecase/posts/add_post_usecase.dart';
import 'package:assessment/domain/usecase/posts/update_post_usecase.dart';
import 'package:assessment/util/error_handling/exception_to_error_object.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';


part 'post_cubit.freezed.dart';

part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit(Post? post)
      : _updatePostUseCase = GetIt.I<UpdatePostUseCase>(),
        _addPostUseCase = GetIt.I<AddPostUseCase>(),
        super(
          PostState(post: post ?? const Post(), postStatus: PostStatus.initial),
        );

  final AddPostUseCase _addPostUseCase;
  final UpdatePostUseCase _updatePostUseCase;

  void updatePostRequested() async {
    if (!isInputsValid()) {
      return;
    }
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
    if (!isInputsValid()) {
      return;
    }
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

  void titleChanged(String title) {
    bool isValid = title.length >= 3;

    emit(state.copyWith(
        post: state.post.copyWith(title: title),
        titleError:
            isValid ? null : "Title must be at least 3 characters long"));
  }

  void bodyChanged(String body) {
    bool isValid = body.length >= 6;
    emit(state.copyWith(
        post: state.post.copyWith(body: body),
        bodyError: isValid ? null : "Body must be at least 6 characters long"));
  }

  bool isInputsValid() {
    if (state.post.title.length >= 3 && state.post.body.length >= 6) {
      return true;
    } else {
      emit(state.copyWith(
          postStatus: PostStatus.failure,
          error: const ErrorEntity(
            title: "Invalid input",
            description: "Please check your input",
            solution: "Try again",
          )));
      return false;
    }
  }
}
