import 'package:assessment/presentation/state_management/posts/posts_cubit.dart';
import 'package:assessment/presentation/ui/component/general/failure_widget.dart';
import 'package:assessment/presentation/ui/component/general/loading_widget.dart';
import 'package:assessment/presentation/ui/component/profile/post_item_widget.dart';
import 'package:assessment/presentation/ui/screen/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../util/enums.dart';
import 'comments_bottom_sheet.dart';

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
            return Stack(
              children: [
                ListView.builder(
                  padding: const EdgeInsets.only(bottom: 100),
                  itemBuilder: (context, index) {
                    return PostItem(
                      post: state.posts[index],
                      onItemPressed: (int postId) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return PostScreen(
                                post: state.posts[index],
                                postAction: PostAction.edit,
                              );
                            },
                          ),
                        );
                      },
                      onShowCommentsPressed: (int postId) {
                        showModalBottomSheet(
                          showDragHandle: true,
                          context: context,
                          builder: (context) {
                            return CommentsBottomSheet(postId: postId);
                          },
                        );
                      },
                    );
                  },
                  itemCount: state.posts.length,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const PostScreen(
                                postAction: PostAction.add,
                              );
                            },
                          ),
                        );
                      },
                      child: const Icon(Icons.add),
                    ),
                  ),
                ),
              ],
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
