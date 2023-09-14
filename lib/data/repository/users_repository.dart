import 'package:assessment/data/data_source/remote/users_data_source.dart';
import 'package:assessment/data/mapper/user_mapper.dart';
import 'package:get_it/get_it.dart';

import '../../domain/entity/user/user.dart';

class UsersRepository {
  UsersRepository() : _usersDataSource = GetIt.I<UsersDataSource>();

  final UsersDataSource _usersDataSource;

  Future<List<User>> getUsers() async {
    var response = await _usersDataSource.getUsers();
    return response.users
            ?.map((user) => UserMapper.mapFromModel(user))
            .toList() ??
        [];
  }
}
