import 'package:assessment/domain/usecase/posts/get_posts_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/entity/error_entity.dart';
import '../../../domain/entity/post/post.dart';
import '../../../util/error_handling/exception_to_error_object.dart';

part 'posts_cubit.freezed.dart';
part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit(int userId)
      : _getPostsUseCase = GetIt.I<GetPostsUseCase>(),
        super(PostsState(postsStatus: PostsStatus.initial, userId: userId));

  final GetPostsUseCase _getPostsUseCase;

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
}
