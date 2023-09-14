/// userId : 1
/// id : 1
/// title : "quidem molestiae enim"
class AlbumsModel {
  AlbumsModel({
    required this.albums,
  });

  List<AlbumModel>? albums;

  factory AlbumsModel.fromJson(dynamic json) => AlbumsModel(
        albums: json == null
            ? null
            : List<AlbumModel>.from(
                json.map(
                  (x) => AlbumModel.fromJson(x),
                ),
              ),
      );
}

class AlbumModel {
  AlbumModel({
    this.userId,
    this.id,
    this.title,
  });

  AlbumModel.fromJson(dynamic json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
  }

  num? userId;
  num? id;
  String? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['id'] = id;
    map['title'] = title;
    return map;
  }
}
