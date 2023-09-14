// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photos_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhotosState {
  PhotosStatus get photosStatus => throw _privateConstructorUsedError;
  int get albumId => throw _privateConstructorUsedError;
  List<Photo> get photos => throw _privateConstructorUsedError;
  ErrorEntity? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotosStateCopyWith<PhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosStateCopyWith<$Res> {
  factory $PhotosStateCopyWith(
          PhotosState value, $Res Function(PhotosState) then) =
      _$PhotosStateCopyWithImpl<$Res, PhotosState>;
  @useResult
  $Res call(
      {PhotosStatus photosStatus,
      int albumId,
      List<Photo> photos,
      ErrorEntity? error});

  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class _$PhotosStateCopyWithImpl<$Res, $Val extends PhotosState>
    implements $PhotosStateCopyWith<$Res> {
  _$PhotosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photosStatus = null,
    Object? albumId = null,
    Object? photos = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      photosStatus: null == photosStatus
          ? _value.photosStatus
          : photosStatus // ignore: cast_nullable_to_non_nullable
              as PhotosStatus,
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
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
abstract class _$$_InitialCopyWith<$Res> implements $PhotosStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PhotosStatus photosStatus,
      int albumId,
      List<Photo> photos,
      ErrorEntity? error});

  @override
  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photosStatus = null,
    Object? albumId = null,
    Object? photos = null,
    Object? error = freezed,
  }) {
    return _then(_$_Initial(
      photosStatus: null == photosStatus
          ? _value.photosStatus
          : photosStatus // ignore: cast_nullable_to_non_nullable
              as PhotosStatus,
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
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
      {required this.photosStatus,
      required this.albumId,
      final List<Photo> photos = const [],
      this.error})
      : _photos = photos;

  @override
  final PhotosStatus photosStatus;
  @override
  final int albumId;
  final List<Photo> _photos;
  @override
  @JsonKey()
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final ErrorEntity? error;

  @override
  String toString() {
    return 'PhotosState(photosStatus: $photosStatus, albumId: $albumId, photos: $photos, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.photosStatus, photosStatus) ||
                other.photosStatus == photosStatus) &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photosStatus, albumId,
      const DeepCollectionEquality().hash(_photos), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements PhotosState {
  const factory _Initial(
      {required final PhotosStatus photosStatus,
      required final int albumId,
      final List<Photo> photos,
      final ErrorEntity? error}) = _$_Initial;

  @override
  PhotosStatus get photosStatus;
  @override
  int get albumId;
  @override
  List<Photo> get photos;
  @override
  ErrorEntity? get error;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
