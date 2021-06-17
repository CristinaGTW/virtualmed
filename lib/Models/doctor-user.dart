import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:virtual_med/Models/user.dart';
import 'package:virtual_med/Services/utils.dart';

class DoctorUser extends User {
  final int userId;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String specialization;
  final String location;
  final String password;

  DoctorUser({
    @required this.userId,
    @required this.firstName,
    @required this.lastName,
    @required this.email,
    @required this.phone,
    @required this.specialization,
    @required this.location,
    this.password,
  }) : super(AccountType.DOCTOR);

  factory DoctorUser.fromJson(Map<String, dynamic> json) {
    return DoctorUser(
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      phone: json['phone'],
      specialization: json['specialization'],
      location: json['location'],
      password: json['password'],
      userId: json['id'],
    );
  }

  static Future<DoctorUser> login(String email, String password) async {
    var res = await postToServer(
        api: 'Login', body: {'email': email, 'password': password, 'acc_type': 'doctor'});
    if (res['msg'] == 'Success') {
      return DoctorUser(
          userId: res['body'][0]['id'],
          firstName: res['body'][0]['first_name'],
          lastName: res['body'][0]['last_name'],
          email: res['body'][0]['email'],
          phone: res['body'][0]['phone'],
          specialization: res['body'][0]['specialization'],
          location: res['body'][0]['location'],
          password: res['body'][0]['password']);
    }
  }

  static Future<DoctorUser> register(String first_name,
      String last_name, String email, String phone, String specialization, String location, String password) async {
    var res = await postToServer(api: 'Register', body: {
      'acc_type': 'doctor',
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'phone': phone,
      'specialization': specialization,
      'location': location,
      'password': password
    });
  }
}
