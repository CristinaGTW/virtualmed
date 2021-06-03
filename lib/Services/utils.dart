import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import '../Models/regular-user.dart';

Future<RegularUser> fetchRegularUser() async {
  final response = await http.get(Uri.parse('https://virtual-med-backend.herokuapp.com/'));

  if (response.statusCode == 200) {
    return RegularUser.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}