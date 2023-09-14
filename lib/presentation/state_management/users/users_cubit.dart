import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/entity/error_entity.dart';
import '../../../domain/entity/user/user.dart';
import '../../../domain/usecase/users/get_users_usecase.dart';
import '../../../util/error_handling/exception_to_error_object.dart';

part 'users_cubit.freezed.dart';
part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit()
      : _usersUseCase = GetIt.I.get<UsersUseCase>(),
        super(const UsersState(usersStatus: UsersStatus.initial));

  final UsersUseCase _usersUseCase;

  void usersRequested() async {
    emit(const UsersState(usersStatus: UsersStatus.loading));
    try {
      var response = await _usersUseCase.call(null);
      emit(
        state.copyWith(
          usersStatus: UsersStatus.success,
          users: response,
        ),
      );
    } on Exception catch (exception) {
      emit(
        state.copyWith(
          usersStatus: UsersStatus.failure,
          error: exceptionToErrorEntity(exception),
        ),
      );
    }
  }
}
