import 'package:assessment/domain/usecase/base_usecase.dart';
import 'package:get_it/get_it.dart';

import '../../../data/repository/users_repository.dart';
import '../../entity/user/user.dart';

class UsersUseCase extends BaseUseCase<void, List<User>> {
  UsersUseCase() : _usersRepository = GetIt.I<UsersRepository>();

  final UsersRepository _usersRepository;

  @override
  Future<List<User>> call(void params) {
    return _usersRepository.getUsers();
  }
}
