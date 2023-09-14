import '../../domain/entity/album/album.dart';
import '../model/albums_model.dart';

class AlbumMapper {
  static Album mapFromModel(AlbumModel model) {
    return Album(
      userId: model.userId?.toInt() ?? 0,
      id: model.id?.toInt() ?? 0,
      title: model.title ?? "no title",
    );
  }
}
