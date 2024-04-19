import 'package:freezed_annotation/freezed_annotation.dart';

part'error_model.g.dart';
@JsonSerializable()
class ErrorModel {
  String message;
  Errors errors;

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
  List<String> password;
  List<String> email;

  Errors({
    required this.password,
    required this.email,
  });
  factory Errors.fromJson(Map<String, dynamic> json) =>
      _$ErrorsFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorsToJson(this);
}

