import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_entity.freezed.dart';

@freezed
class SuccessEntity with _$SuccessEntity {
  const factory SuccessEntity({
    required bool success,
  }) = _SuccessEntity;
}
