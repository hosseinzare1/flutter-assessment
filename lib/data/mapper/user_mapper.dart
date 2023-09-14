import '../../domain/entity/user/user.dart';
import '../model/users_model.dart';

class UserMapper {
  static User mapFromModel(UserModel response) {
    return User(
        id: response.id?.toInt() ?? 0,
        name: response.name ?? "empty",
        email: response.email ?? "empty",
        phone: response.phone ?? "empty");
  }
}
