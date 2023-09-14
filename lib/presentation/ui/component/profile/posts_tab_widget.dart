import 'package:assessment/presentation/state_management/posts/posts_cubit.dart';
import 'package:assessment/presentation/ui/component/general/failure_widget.dart';
import 'package:assessment/presentation/ui/component/general/loading_widget.dart';
import 'package:assessment/presentation/ui/component/profile/post_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsTabWidget extends StatelessWidget {
  const PostsTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsCubit, PostsState>(
      builder: (context, state) {
        switch (state.postsStatus) {
          case PostsStatus.initial:
            context.read<PostsCubit>().postsRequested();
            return const LoadingWidget();
          case PostsStatus.loading:
            return const LoadingWidget();
          case PostsStatus.success:
            return ListView.builder(
              itemBuilder: (context, index) {
                return PostItem(
                  post: state.posts[index],
                  onTap: (int postId) {},
                );
              },
              itemCount: state.posts.length,
            );
          case PostsStatus.failure:
            return FailureWidget(
              error: state.error,
              onRetryPressed: () {
                context.read<PostsCubit>().postsRequested();
              },
            );
        }
      },
    );
  }
}
