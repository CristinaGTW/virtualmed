import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:virtual_med/Services/utils.dart';

class RegularUser {
  final int userId;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String password;

  RegularUser({
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

  static Future<RegularUser> login(String email, String password) async {
    var res = await postToServer(
        api: 'Login',
        body: {'email': email, 'password': password, 'acc_type': 'regular'});
    if (res['msg'] == 'Success') {
      return RegularUser(
          userId: res['body'][0]['id'],
          firstName: res['body'][0]['first_name'],
          lastName: res['body'][0]['last_name'],
          email: res['body'][0]['email'],
          phone: res['body'][0]['phone'],
          password: res['body'][0]['password']);
    }
  }

  static Future<RegularUser> register(String first_name, String last_name,
      String email, String phone, String password) async {
    var res = await postToServer(api: 'Register', body: {
      'acc_type': 'regular',
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'phone': phone,
      'specialization': '',
      'location': '',
      'password': password
    });
  }
}
