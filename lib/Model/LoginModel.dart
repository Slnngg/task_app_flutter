import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  int? success;
  String? message;
  String? accessToken;

  LoginModel({
    this.success,
    this.message,
    this.accessToken,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        success: json["success"],
        message: json["message"],
        accessToken: json["accessToken"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "accessToken": accessToken,
      };
}
