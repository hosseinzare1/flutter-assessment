part of 'users_cubit.dart';

enum UsersStatus { initial, loading, success, failure }

@freezed
class UsersState with _$UsersState {
  const factory UsersState({
    required UsersStatus usersStatus,
    List<User>? users,
    ErrorEntity? error,
  }) = _Initial;
}
