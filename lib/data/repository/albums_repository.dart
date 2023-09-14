import 'package:assessment/data/data_source/remote/albums_data_source.dart';
import 'package:assessment/data/mapper/album_mapper.dart';
import 'package:assessment/domain/entity/album/album.dart';
import 'package:get_it/get_it.dart';

import '../../domain/entity/album/photo.dart';
import '../mapper/photo_mapper.dart';

class AlbumsRepository {
  AlbumsRepository() : _albumsDataSource = GetIt.I<AlbumsDataSource>();

  final AlbumsDataSource _albumsDataSource;

  Future<List<Album>> getAlbums(int userId) async {
    var response = await _albumsDataSource.getAlbums(userId);
    return response.albums
            ?.map((album) => AlbumMapper.mapFromModel(album))
            .toList() ??
        [];
  }

  Future<List<Photo>> getPhotos(int albumId) async {
    var response = await _albumsDataSource.getPhotos(albumId);
    return response.photos
            ?.map((photo) => PhotoMapper.mapFromModel(photo))
            .toList() ??
        [];
  }
}
