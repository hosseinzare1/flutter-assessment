import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_entity.freezed.dart';

@freezed
class ErrorEntity with _$ErrorEntity {
  const factory ErrorEntity({
    Exception? exception,
    required String title,
    required String description,
    required String solution,
  }) = _ErrorEntity;
}
