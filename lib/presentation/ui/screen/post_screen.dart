import 'package:flutter/material.dart';

import '../../../domain/entity/post/post.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //TODO add post id title.
          title: Text("Post "),
          centerTitle: true,
        ),
        body: const PostBody(),
      ),
    );
  }
}

class PostBody extends StatelessWidget {
  const PostBody({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              style: textTheme.titleLarge,
              onChanged: (value) {},
            ),
            TextField(
              style: textTheme.bodyMedium,
              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}
