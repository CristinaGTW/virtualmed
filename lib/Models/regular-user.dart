import 'package:flutter/material.dart';

class RegularUser {
  final int userId;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String password;

  RegularUser(
      {
        @required this.userId,
        @required this.firstName,
        @required this.lastName,
        @required this.email,
        @required this.phone,
        @required this.password,
      });

  factory RegularUser.fromJson(Map<String, dynamic> json) {
    return RegularUser(
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      phone: json['phone'],
      password: json['password'],
      userId: json['id'],
    );
  }
}