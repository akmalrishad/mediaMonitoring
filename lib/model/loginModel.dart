// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) =>
    json.encode(data.toJson());

class LoginResponseModel {
  LoginResponseModel({
    required this.message,
    required this.status,
    required this.data,
  });

  String message;
  int status;
  Data data;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        message: json["message"],
        status: json["status"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.token,
    required this.role,
  });

  String token;
  String role;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json["token"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "role": role,
      };
}
