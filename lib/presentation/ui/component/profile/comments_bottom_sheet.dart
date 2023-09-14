import 'package:assessment/presentation/state_management/posts/comments_cubit.dart';
import 'package:assessment/presentation/ui/component/general/failure_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../general/loading_widget.dart';
import 'comment_item_widget.dart';

class CommentsBottomSheet extends StatelessWidget {
  const CommentsBottomSheet({super.key, required this.postId});

  final int postId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CommentsCubit(postId: postId),
      child: BlocBuilder<CommentsCubit, CommentsState>(
        builder: (context, state) {
          switch (state.commentsStatus) {
            case CommentsStatus.initial:
              context.read<CommentsCubit>().commentsRequested(postId);
              return const LoadingWidget();
            case CommentsStatus.loading:
              return const LoadingWidget();
            case CommentsStatus.success:
              return ListView.builder(
                itemBuilder: (context, index) {
                  return CommentItem(
                    comment: state.comments[index],
                  );
                },
                itemCount: state.comments.length,
              );
            case CommentsStatus.failure:
              return FailureWidget(
                error: state.error,
                onRetryPressed: () {
                  context.read<CommentsCubit>().commentsRequested(postId);
                },
              );
          }
        },
      ),
    );
  }
}
