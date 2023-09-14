import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/entity/error_entity.dart';
import '../../../domain/entity/post/comment.dart';
import '../../../domain/usecase/posts/get_comments_usecase.dart';
import '../../../util/error_handling/exception_to_error_object.dart';

part 'comments_cubit.freezed.dart';
part 'comments_state.dart';

class CommentsCubit extends Cubit<CommentsState> {
  CommentsCubit({required int postId})
      : _getCommentsUseCase = GetIt.I<GetCommentsUseCase>(),
        super(
          CommentsState(
            commentsStatus: CommentsStatus.initial,
            postId: postId,
          ),
        );
  final GetCommentsUseCase _getCommentsUseCase;

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
