part of 'photos_cubit.dart';

enum PhotosStatus { initial, loading, success, failure }

@freezed
class PhotosState with _$PhotosState {
  const factory PhotosState({
    required PhotosStatus photosStatus,
    required int albumId,
    @Default([]) List<Photo> photos,
    ErrorEntity? error
}) = _Initial;
}
