import 'package:assessment/data/response/users_model.dart';
import 'package:assessment/domain/model/user/user.dart';

class UserMapper {
  static User map(UserModel response) {
    return User(
        id: response.id?.toInt() ?? 0,
        name: response.name ?? "empty",
        email: response.email ?? "empty",
        phone: response.phone ?? "empty");
  }
}
