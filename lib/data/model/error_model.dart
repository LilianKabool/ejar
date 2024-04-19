import 'package:freezed_annotation/freezed_annotation.dart';

part'error_model.g.dart';
@JsonSerializable()
class ErrorModel {
  final String message;
 final Errors? errors;

  ErrorModel({
    required this.message,
    required this.errors,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);

}
@JsonSerializable()
class Errors {
 final List<String>? password;
 final List<String>? email;

  Errors(
     this.password,
     this.email,
  );
  factory Errors.fromJson(Map<String, dynamic> json) =>
      _$ErrorsFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorsToJson(this);
}

