import 'package:assessment/domain/entity/post/post.dart';
import 'package:assessment/presentation/state_management/post/post_cubit.dart';
import 'package:assessment/util/dependency_injection.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  setUp(() {
    WidgetsFlutterBinding.ensureInitialized();
    DependencyInjection.initAllDependencies();
  });

  tearDown(() {
    GetIt.I.reset();
  });

  group(
    "test add post",
    () {
      blocTest<PostCubit, PostState>(
        "emit noting when created",
        build: () => PostCubit(const Post()),
        expect: () => [],
      );

      blocTest<PostCubit, PostState>(
        "state must contain errors",
        build: () => PostCubit(const Post()),
        act: (bloc) {
          bloc.titleChanged("ab");
          bloc.bodyChanged("abc");
        },
        expect: () => [
          const PostState(
            post: Post(title: "ab"),
            postStatus: PostStatus.initial,
            titleError: "Title must be at least 3 characters long",
          ),
          const PostState(
            post: Post(title: "ab", body: "abc"),
            postStatus: PostStatus.initial,
            titleError: "Title must be at least 3 characters long",
            bodyError: "Body must be at least 6 characters long",
          ),
        ],
      );

      blocTest<PostCubit, PostState>(
        "fields must be valid",
        build: () => PostCubit(const Post()),
        act: (bloc) {
          bloc.titleChanged("abc");
          bloc.bodyChanged("abcdef");
        },
        expect: () => [
          const PostState(
            post: Post(title: "abc"),
            postStatus: PostStatus.initial,
          ),
          const PostState(
            post: Post(title: "abc", body: "abcdef"),
            postStatus: PostStatus.initial,
          ),
        ],
      );
    },
  );
}
