import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_model.g.dart';
@JsonSerializable()
class RegisterModel{
  String message;
  Data data;
  String token;

  RegisterModel({
    required this.message,
    required this.data,
    required this.token,
  });
  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}
@JsonSerializable()
class Data {
  int id;
  String firstName;
  String lastName;
  String gender;
  DateTime birthday;
  String address;
  String phone;
  dynamic facebook;
  dynamic twiter;
  dynamic instagram;
  dynamic telegram;
  int active;
  int user;
  int company;
  int salon;
  String email;
  DateTime emailVerifiedAt;
  DateTime createdAt;
  DateTime updatedAt;

  Data({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.birthday,
    required this.address,
    required this.phone,
    required this.facebook,
    required this.twiter,
    required this.instagram,
    required this.telegram,
    required this.active,
    required this.user,
    required this.company,
    required this.salon,
    required this.email,
    required this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
  });
  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this as RegisterModel);
}