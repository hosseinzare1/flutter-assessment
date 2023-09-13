import 'package:assessment/data/response/users_response.dart';
import 'package:assessment/domain/model/user/user.dart';

class UserMapper {
  static User map(UserResponse response) {
    return User(
        id: response.id?.toInt() ?? 0,
        name: response.name ?? "empty",
        email: response.email ?? "empty",
        phone: response.phone ?? "empty");
  }
}
