import '../../domain/entity/album/photo.dart';
import '../model/photos_model.dart';

class PhotoMapper {
  static Photo mapFromModel(PhotoModel model) {
    return Photo(
      albumId: model.albumId?.toInt() ?? 0,
      id: model.id?.toInt() ?? 0,
      title: model.title ?? "no title",
      url: model.url ?? "",
      thumbnailUrl: model.thumbnailUrl ?? "",
    );
  }
}
