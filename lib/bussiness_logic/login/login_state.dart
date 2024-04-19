
import 'package:ejar_v/data/model/login_model.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/error_model.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState {
  const factory LoginState.idel() = Idel<T>;

  const factory LoginState.loading() = Loading<T>;

  const factory LoginState.success(T data) = Success<T>;

  const factory LoginState.error(  NetworkExceptions error) = Error<T>;


}


