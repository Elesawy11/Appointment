import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResopnseBody {
  final String? message;
  @JsonKey(name: 'data')
  final UserData? userData;
  final bool? status;
  final int? code;

  factory LoginResopnseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResopnseBodyFromJson(json);

  LoginResopnseBody(
      {required this.message,
      required this.userData,
      required this.status,
      required this.code});
}

@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;

  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
