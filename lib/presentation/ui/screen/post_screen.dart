import 'package:assessment/presentation/state_management/post/post_cubit.dart';
import 'package:assessment/util/enums.dart';
import 'package:assessment/util/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entity/post/post.dart';
import '../component/general/loading_widget.dart';

class PostScreenExtras {
  PostScreenExtras(this.post, this.postAction);

  final Post? post;
  final PostAction postAction;
}

class PostScreen extends StatelessWidget {
  const PostScreen({super.key, required this.extras});

  final PostScreenExtras extras;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostCubit(extras.post),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Post"),
          centerTitle: true,
        ),
        body: PostBody(
          postAction: extras.postAction,
        ),
      ),
    );
  }
}

class PostBody extends StatelessWidget {
  const PostBody({super.key, required this.postAction});

  final PostAction postAction;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return BlocListener<PostCubit, PostState>(
      listenWhen: (pState, nState) => pState.postStatus != nState.postStatus,
      listener: (context, state) {
        if (state.postStatus == PostStatus.failure) {
          context.showErrorMessage(errorObject: state.error);
        } else if (state.postStatus == PostStatus.success) {
          context.showSuccessMessage(
            message:
                "Post ${postAction == PostAction.add ? "added" : "updated"} successfully",
          );
          context.pop(state.post);
        }
      },
      child: BlocBuilder<PostCubit, PostState>(
        buildWhen: (pState,nState) => pState.postStatus != nState.postStatus,
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BlocBuilder<PostCubit, PostState>(
                        buildWhen: (pStata, nState) {
                          return pStata.titleError != nState.titleError ||
                              pStata.post.title != nState.post.title;
                        },
                        builder: (context, state) {
                          return TextFormField(
                            initialValue: state.post.title,
                            style: textTheme.titleMedium,
                            decoration: InputDecoration(
                                hintText: "Title", errorText: state.titleError),
                            onChanged: (value) =>
                                context.read<PostCubit>().titleChanged(value),
                          );
                        },
                      ),
                      BlocBuilder<PostCubit, PostState>(
                        buildWhen: (pState, nState) {
                          return pState.bodyError != nState.bodyError ||
                              pState.post.body != nState.post.body;
                        },
                        builder: (context, state) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 64),
                            child: TextFormField(
                              initialValue: state.post.body,
                              style: textTheme.bodyLarge,
                              maxLines: 10,
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: "body",
                                  errorText: state.bodyError),
                              onChanged: (value) =>
                                  context.read<PostCubit>().bodyChanged(value),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                child: state.postStatus == PostStatus.loading
                    ? const LoadingWidget()
                    : ElevatedButton(
                        onPressed: () {
                          if (postAction == PostAction.add) {
                            context.read<PostCubit>().addPostRequested();
                          } else {
                            context.read<PostCubit>().updatePostRequested();
                          }
                        },
                        child: Text(
                          postAction == PostAction.add ? "Add" : "Update",
                        ),
                      ),
              )
            ],
          );
        },
      ),
    );
  }
}
