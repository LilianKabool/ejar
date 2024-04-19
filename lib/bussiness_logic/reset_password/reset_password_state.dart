
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'reset_password_state.freezed.dart';

@freezed
class ResetPasswordState<T> with _$ResetPasswordState {
  const factory ResetPasswordState.idel() = Idel<T>;

  const factory ResetPasswordState.loading() = Loading<T>;

  const factory ResetPasswordState.success(T data) = Success<T>;

  const factory ResetPasswordState.error(NetworkExceptions networkExceptions) = Error<T>;


}


