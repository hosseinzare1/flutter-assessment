/// postId : 1
/// id : 1
/// name : "id labore ex et quam laborum"
/// email : "Eliseo@gardner.biz"
/// body : "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"

class CommentsModel {
  CommentsModel({required this.comments});

  List<CommentModel>? comments;

  factory CommentsModel.fromJson(dynamic json) => CommentsModel(
        comments: json == null
            ? null
            : List<CommentModel>.from(
                json.map(
                  (x) => CommentModel.fromJson(x),
                ),
              ),
      );
}

class CommentModel {
  CommentModel({
    this.postId,
    this.id,
    this.name,
    this.email,
    this.body,
  });

  CommentModel.fromJson(dynamic json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  num? postId;
  num? id;
  String? name;
  String? email;
  String? body;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['postId'] = postId;
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['body'] = body;
    return map;
  }
}
