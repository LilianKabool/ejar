
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'verifiy_code_state.freezed.dart';

@freezed
class VerifiyCodeState<T> with _$VerifiyCodeState {
  const factory VerifiyCodeState.idel() = Idel<T>;

  const factory VerifiyCodeState.loading() = Loading<T>;

  const factory VerifiyCodeState.success(T data) = Success<T>;

  const factory VerifiyCodeState.error( NetworkExceptions networkExceptions) = Error<T>;


}


