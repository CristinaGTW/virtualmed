import 'package:flutter/material.dart';
import 'package:virtual_med/Models/doctor-user.dart';
import 'package:virtual_med/Models/regular-user.dart';

class UserProvider with ChangeNotifier {
  RegularUser regularUser;
  DoctorUser doctorUser;

  setRegularUser(RegularUser data) {
    regularUser = data;
    doctorUser = null;
    notifyListeners();
  }

  setDoctorUser(DoctorUser data) {
    regularUser = null;
    doctorUser = data;
    notifyListeners();
  }

}