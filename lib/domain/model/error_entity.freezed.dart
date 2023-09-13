// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ErrorEntity {
  Exception? get exception => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get solution => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorEntityCopyWith<ErrorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorEntityCopyWith<$Res> {
  factory $ErrorEntityCopyWith(
          ErrorEntity value, $Res Function(ErrorEntity) then) =
      _$ErrorEntityCopyWithImpl<$Res, ErrorEntity>;
  @useResult
  $Res call(
      {Exception? exception,
      String title,
      String description,
      String solution});
}

/// @nodoc
class _$ErrorEntityCopyWithImpl<$Res, $Val extends ErrorEntity>
    implements $ErrorEntityCopyWith<$Res> {
  _$ErrorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? title = null,
    Object? description = null,
    Object? solution = null,
  }) {
    return _then(_value.copyWith(
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      solution: null == solution
          ? _value.solution
          : solution // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorEntityCopyWith<$Res>
    implements $ErrorEntityCopyWith<$Res> {
  factory _$$_ErrorEntityCopyWith(
          _$_ErrorEntity value, $Res Function(_$_ErrorEntity) then) =
      __$$_ErrorEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Exception? exception,
      String title,
      String description,
      String solution});
}

/// @nodoc
class __$$_ErrorEntityCopyWithImpl<$Res>
    extends _$ErrorEntityCopyWithImpl<$Res, _$_ErrorEntity>
    implements _$$_ErrorEntityCopyWith<$Res> {
  __$$_ErrorEntityCopyWithImpl(
      _$_ErrorEntity _value, $Res Function(_$_ErrorEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? title = null,
    Object? description = null,
    Object? solution = null,
  }) {
    return _then(_$_ErrorEntity(
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      solution: null == solution
          ? _value.solution
          : solution // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorEntity implements _ErrorEntity {
  const _$_ErrorEntity(
      {this.exception,
      required this.title,
      required this.description,
      required this.solution});

  @override
  final Exception? exception;
  @override
  final String title;
  @override
  final String description;
  @override
  final String solution;

  @override
  String toString() {
    return 'ErrorEntity(exception: $exception, title: $title, description: $description, solution: $solution)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorEntity &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.solution, solution) ||
                other.solution == solution));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, exception, title, description, solution);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorEntityCopyWith<_$_ErrorEntity> get copyWith =>
      __$$_ErrorEntityCopyWithImpl<_$_ErrorEntity>(this, _$identity);
}

abstract class _ErrorEntity implements ErrorEntity {
  const factory _ErrorEntity(
      {final Exception? exception,
      required final String title,
      required final String description,
      required final String solution}) = _$_ErrorEntity;

  @override
  Exception? get exception;
  @override
  String get title;
  @override
  String get description;
  @override
  String get solution;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorEntityCopyWith<_$_ErrorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
