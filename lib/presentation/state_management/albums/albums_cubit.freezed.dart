// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'albums_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlbumsState {
  AlbumsStatus get albumsStatus => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  List<Album> get albums => throw _privateConstructorUsedError;
  ErrorEntity? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumsStateCopyWith<AlbumsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumsStateCopyWith<$Res> {
  factory $AlbumsStateCopyWith(
          AlbumsState value, $Res Function(AlbumsState) then) =
      _$AlbumsStateCopyWithImpl<$Res, AlbumsState>;
  @useResult
  $Res call(
      {AlbumsStatus albumsStatus,
      int userId,
      List<Album> albums,
      ErrorEntity? error});

  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class _$AlbumsStateCopyWithImpl<$Res, $Val extends AlbumsState>
    implements $AlbumsStateCopyWith<$Res> {
  _$AlbumsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumsStatus = null,
    Object? userId = null,
    Object? albums = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      albumsStatus: null == albumsStatus
          ? _value.albumsStatus
          : albumsStatus // ignore: cast_nullable_to_non_nullable
              as AlbumsStatus,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
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
abstract class _$$_InitialCopyWith<$Res> implements $AlbumsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AlbumsStatus albumsStatus,
      int userId,
      List<Album> albums,
      ErrorEntity? error});

  @override
  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AlbumsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumsStatus = null,
    Object? userId = null,
    Object? albums = null,
    Object? error = freezed,
  }) {
    return _then(_$_Initial(
      albumsStatus: null == albumsStatus
          ? _value.albumsStatus
          : albumsStatus // ignore: cast_nullable_to_non_nullable
              as AlbumsStatus,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
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
      {required this.albumsStatus,
      required this.userId,
      final List<Album> albums = const [],
      this.error})
      : _albums = albums;

  @override
  final AlbumsStatus albumsStatus;
  @override
  final int userId;
  final List<Album> _albums;
  @override
  @JsonKey()
  List<Album> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  @override
  final ErrorEntity? error;

  @override
  String toString() {
    return 'AlbumsState(albumsStatus: $albumsStatus, userId: $userId, albums: $albums, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.albumsStatus, albumsStatus) ||
                other.albumsStatus == albumsStatus) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._albums, _albums) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, albumsStatus, userId,
      const DeepCollectionEquality().hash(_albums), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements AlbumsState {
  const factory _Initial(
      {required final AlbumsStatus albumsStatus,
      required final int userId,
      final List<Album> albums,
      final ErrorEntity? error}) = _$_Initial;

  @override
  AlbumsStatus get albumsStatus;
  @override
  int get userId;
  @override
  List<Album> get albums;
  @override
  ErrorEntity? get error;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
