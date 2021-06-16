import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:virtual_med/Services/utils.dart';

class RegularUser {
  final int userId;
  String firstName;
  String lastName;
  String email;
  String phone;
  String password;

  String birthdate = '';
  String height = '';
  String weight = '';
  String chronic_diseases = '';

  RegularUser({
    @required this.userId,
    @required this.firstName,
    @required this.lastName,
    @required this.email,
    @required this.phone,
    this.password,
    this.birthdate,
    this.height,
    this.weight,
    this.chronic_diseases,
  });

  factory RegularUser.fromJson(Map<String, dynamic> json) {
    return RegularUser(
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      phone: json['phone'],
      password: json['password'],
      userId: json['id'],
      birthdate: json['birthdate'],
      height: json['height'],
      weight: json['weight'],
      chronic_diseases: json['chronic_diseases']
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
          password: res['body'][0]['password'],
          birthdate: res['body'][0]['birthdate'],
          height: res['body'][0]['height'],
          weight: res['body'][0]['weight'],
          chronic_diseases: res['body'][0]['chronic_diseases']);
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
