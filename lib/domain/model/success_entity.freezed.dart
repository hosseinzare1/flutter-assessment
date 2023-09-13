// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SuccessEntity {
  bool get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuccessEntityCopyWith<SuccessEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessEntityCopyWith<$Res> {
  factory $SuccessEntityCopyWith(
          SuccessEntity value, $Res Function(SuccessEntity) then) =
      _$SuccessEntityCopyWithImpl<$Res, SuccessEntity>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$SuccessEntityCopyWithImpl<$Res, $Val extends SuccessEntity>
    implements $SuccessEntityCopyWith<$Res> {
  _$SuccessEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SuccessEntityCopyWith<$Res>
    implements $SuccessEntityCopyWith<$Res> {
  factory _$$_SuccessEntityCopyWith(
          _$_SuccessEntity value, $Res Function(_$_SuccessEntity) then) =
      __$$_SuccessEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$_SuccessEntityCopyWithImpl<$Res>
    extends _$SuccessEntityCopyWithImpl<$Res, _$_SuccessEntity>
    implements _$$_SuccessEntityCopyWith<$Res> {
  __$$_SuccessEntityCopyWithImpl(
      _$_SuccessEntity _value, $Res Function(_$_SuccessEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$_SuccessEntity(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SuccessEntity implements _SuccessEntity {
  const _$_SuccessEntity({required this.success});

  @override
  final bool success;

  @override
  String toString() {
    return 'SuccessEntity(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessEntity &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessEntityCopyWith<_$_SuccessEntity> get copyWith =>
      __$$_SuccessEntityCopyWithImpl<_$_SuccessEntity>(this, _$identity);
}

abstract class _SuccessEntity implements SuccessEntity {
  const factory _SuccessEntity({required final bool success}) =
      _$_SuccessEntity;

  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessEntityCopyWith<_$_SuccessEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
