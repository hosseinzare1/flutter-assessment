import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';

@freezed
class Post with _$Post {
  const factory Post({
    @Default(0) int userId,
    @Default(0) int id,
    @Default("") String title,
    @Default("") String body,
  }) = _Post;
}
