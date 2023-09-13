import 'package:freezed_annotation/freezed_annotation.dart';

part 'album.freezed.dart';

@freezed
class Album with _$Album {
  const factory Album({
    required int userId,
    required int id,
    required String title,
  }) = _Album;
}
