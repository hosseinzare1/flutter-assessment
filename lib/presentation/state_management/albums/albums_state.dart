part of 'albums_cubit.dart';

enum AlbumsStatus { initial, loading, success, failure }

@freezed
class AlbumsState with _$AlbumsState {
  const factory AlbumsState({
    required AlbumsStatus albumsStatus,
    required int userId,
    @Default([]) List<Album> albums,
    ErrorEntity? error,
}) = _Initial;
}
