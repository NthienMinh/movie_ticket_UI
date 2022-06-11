import 'package:flutter/cupertino.dart';

class UserModel{
  final String email;
  final String password;

  const UserModel({
    required this.email,
    required this.password
  });

  static List<UserModel> UserList = [
    UserModel(email: "hodangdung@gmail.com", password: "123456"),
    UserModel(email: "lengocquetran@gmail,com", password: "123456")
  ];
}