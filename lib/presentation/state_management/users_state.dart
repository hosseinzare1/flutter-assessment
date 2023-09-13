part of 'users_cubit.dart';

enum UsersStatus { initial, loading, success, failure }

@freezed
class UsersState with _$UsersState {
  const factory UsersState({
    required UsersStatus status,
    List<User>? users,
    ErrorEntity? error,
  }) = _Initial;
}
