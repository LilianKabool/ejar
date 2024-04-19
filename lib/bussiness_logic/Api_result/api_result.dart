
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';
@freezed
abstract class ApisResult<T> with _$ApisResult {
  const factory ApisResult.success( T data)= Success<T> ;
  const factory ApisResult.faliure( NetworkExceptions error)= Faliure<T> ;

}

