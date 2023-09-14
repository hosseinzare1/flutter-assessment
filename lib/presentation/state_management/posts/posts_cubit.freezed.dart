// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostsState {
  PostsStatus get postsStatus => throw _privateConstructorUsedError;

  CommentsStatus get commentsStatus => throw _privateConstructorUsedError;

  int get userId => throw _privateConstructorUsedError;

  List<Post> get posts => throw _privateConstructorUsedError;

  List<Comment> get comments => throw _privateConstructorUsedError;

  ErrorEntity? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsStateCopyWith<PostsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res, PostsState>;

  @useResult
  $Res call(
      {PostsStatus postsStatus,
      CommentsStatus commentsStatus,
      int userId,
      List<Post> posts,
      List<Comment> comments,
      ErrorEntity? error});

  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res, $Val extends PostsState>
    implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postsStatus = null,
    Object? commentsStatus = null,
    Object? userId = null,
    Object? posts = null,
    Object? comments = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      postsStatus: null == postsStatus
          ? _value.postsStatus
          : postsStatus // ignore: cast_nullable_to_non_nullable
              as PostsStatus,
      commentsStatus: null == commentsStatus
          ? _value.commentsStatus
          : commentsStatus // ignore: cast_nullable_to_non_nullable
              as CommentsStatus,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorEntityCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorEntityCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {PostsStatus postsStatus,
      CommentsStatus commentsStatus,
      int userId,
      List<Post> posts,
      List<Comment> comments,
      ErrorEntity? error});

  @override
  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postsStatus = null,
    Object? commentsStatus = null,
    Object? userId = null,
    Object? posts = null,
    Object? comments = null,
    Object? error = freezed,
  }) {
    return _then(_$_Initial(
      postsStatus: null == postsStatus
          ? _value.postsStatus
          : postsStatus // ignore: cast_nullable_to_non_nullable
              as PostsStatus,
      commentsStatus: null == commentsStatus
          ? _value.commentsStatus
          : commentsStatus // ignore: cast_nullable_to_non_nullable
              as CommentsStatus,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.postsStatus,
      required this.commentsStatus,
      required this.userId,
      final List<Post> posts = const [],
      final List<Comment> comments = const [],
      this.error})
      : _posts = posts,
        _comments = comments;

  @override
  final PostsStatus postsStatus;
  @override
  final CommentsStatus commentsStatus;
  @override
  final int userId;
  final List<Post> _posts;

  @override
  @JsonKey()
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  final List<Comment> _comments;

  @override
  @JsonKey()
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final ErrorEntity? error;

  @override
  String toString() {
    return 'PostsState(postsStatus: $postsStatus, commentsStatus: $commentsStatus, userId: $userId, posts: $posts, comments: $comments, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.postsStatus, postsStatus) ||
                other.postsStatus == postsStatus) &&
            (identical(other.commentsStatus, commentsStatus) ||
                other.commentsStatus == commentsStatus) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      postsStatus,
      commentsStatus,
      userId,
      const DeepCollectionEquality().hash(_posts),
      const DeepCollectionEquality().hash(_comments),
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements PostsState {
  const factory _Initial(
      {required final PostsStatus postsStatus,
      required final CommentsStatus commentsStatus,
      required final int userId,
      final List<Post> posts,
      final List<Comment> comments,
      final ErrorEntity? error}) = _$_Initial;

  @override
  PostsStatus get postsStatus;

  @override
  CommentsStatus get commentsStatus;

  @override
  int get userId;

  @override
  List<Post> get posts;

  @override
  List<Comment> get comments;

  @override
  ErrorEntity? get error;

  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
