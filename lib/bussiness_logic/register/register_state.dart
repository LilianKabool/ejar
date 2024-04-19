
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'register_state.freezed.dart';

@freezed
class RegisterState<T> with _$RegisterState {
  const factory RegisterState.idel() = Idel<T>;

  const factory RegisterState.loading() = Loading<T>;

  const factory RegisterState.success(T data) = Success<T>;

  const factory RegisterState.error(  NetworkExceptions networkExceptions) = Error<T>;


}


