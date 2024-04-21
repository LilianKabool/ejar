part of 'user_log_in_cubit.dart';

@freezed
class UserLogInState with _$UserLogInState {
  const factory UserLogInState.initial() = _Initial;
  const factory UserLogInState.loading() = Loading;

  const factory UserLogInState.success(LoginModel loginModel) = Success;

  const factory UserLogInState.error(NetworkExceptions networkExceptions) =
      Error;}
