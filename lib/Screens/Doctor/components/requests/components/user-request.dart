import 'package:flutter/material.dart';

class UserRequest {
  final String name;
  final String diagnosis;
  final String image;
  final String time;
  final String status;
  final String phone;
  final String age;
  final String height;
  final String weight;
  final String chronic_diseases;
  final String query_answers;

  UserRequest(
      {@required this.name,
        @required this.diagnosis,
        @required this.image,
        @required this.time,
        @required this.status,
        @required this.phone,
        @required this.age,
        @required this.height,
        @required this.weight,
        @required this.chronic_diseases,
        @required this.query_answers});
}