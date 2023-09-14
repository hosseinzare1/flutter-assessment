// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostState {
  PostStatus get postStatus => throw _privateConstructorUsedError;

  Post get post => throw _privateConstructorUsedError;

  /*    required AddPostStatus addStatus,
    required UpdatePostStatus updateStatus,
    required GetCommentsStatus commentsStatus,*/
  ErrorEntity? get error => throw _privateConstructorUsedError;

  String? get titleError => throw _privateConstructorUsedError;

  String? get bodyError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;

  @useResult
  $Res call(
      {PostStatus postStatus,
      Post post,
      ErrorEntity? error,
      String? titleError,
      String? bodyError});

  $PostCopyWith<$Res> get post;

  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postStatus = null,
    Object? post = null,
    Object? error = freezed,
    Object? titleError = freezed,
    Object? bodyError = freezed,
  }) {
    return _then(_value.copyWith(
      postStatus: null == postStatus
          ? _value.postStatus
          : postStatus // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
      titleError: freezed == titleError
          ? _value.titleError
          : titleError // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyError: freezed == bodyError
          ? _value.bodyError
          : bodyError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
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
abstract class _$$_InitialCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {PostStatus postStatus,
      Post post,
      ErrorEntity? error,
      String? titleError,
      String? bodyError});

  @override
  $PostCopyWith<$Res> get post;

  @override
  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postStatus = null,
    Object? post = null,
    Object? error = freezed,
    Object? titleError = freezed,
    Object? bodyError = freezed,
  }) {
    return _then(_$_Initial(
      postStatus: null == postStatus
          ? _value.postStatus
          : postStatus // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
      titleError: freezed == titleError
          ? _value.titleError
          : titleError // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyError: freezed == bodyError
          ? _value.bodyError
          : bodyError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(
      {required this.postStatus,
      required this.post,
      this.error,
      this.titleError,
      this.bodyError})
      : super._();

  @override
  final PostStatus postStatus;
  @override
  final Post post;

/*    required AddPostStatus addStatus,
    required UpdatePostStatus updateStatus,
    required GetCommentsStatus commentsStatus,*/
  @override
  final ErrorEntity? error;
  @override
  final String? titleError;
  @override
  final String? bodyError;

  @override
  String toString() {
    return 'PostState(postStatus: $postStatus, post: $post, error: $error, titleError: $titleError, bodyError: $bodyError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.postStatus, postStatus) ||
                other.postStatus == postStatus) &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.titleError, titleError) ||
                other.titleError == titleError) &&
            (identical(other.bodyError, bodyError) ||
                other.bodyError == bodyError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, postStatus, post, error, titleError, bodyError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial extends PostState {
  const factory _Initial(
      {required final PostStatus postStatus,
      required final Post post,
      final ErrorEntity? error,
      final String? titleError,
      final String? bodyError}) = _$_Initial;

  const _Initial._() : super._();

  @override
  PostStatus get postStatus;

  @override
  Post get post;

  @override /*    required AddPostStatus addStatus,
    required UpdatePostStatus updateStatus,
    required GetCommentsStatus commentsStatus,*/
  ErrorEntity? get error;

  @override
  String? get titleError;

  @override
  String? get bodyError;

  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
