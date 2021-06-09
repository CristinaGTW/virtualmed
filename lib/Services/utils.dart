import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import '../Models/regular-user.dart';

Future<RegularUser> fetchRegularUser() async {
  final response = await http.get(Uri.parse('https://virtual-med-backend.herokuapp.com/'));

  if (response.statusCode == 200) {
    return RegularUser.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to fetch user');
  }
}

Future<Map<String, dynamic>> postToServer(
    {String api, dynamic body, Map<String, String> header}) async {
  if (header == null) {
    header = {'Content-Type': 'application/json'};
  }
  var res = await http.post("https://virtual-med-backend.herokuapp.com/$api",
      headers: header, body: jsonEncode(body));

  if (res.statusCode == 200) {
    var body = json.decode(utf8.decode(res.bodyBytes));
    print(body);
    return {"msg": "Success", "body": body};
  }
  return {"msg": json.decode(utf8.decode(res.bodyBytes))['message']};
}

void sendContactRequest(int user_id, String specialization,
    String query_answers, String description) async {
}

// Future<RegularUser> fetchRegularUser() async {
//   final response =
//       await http.get(Uri.parse('https://virtual-med-backend.herokuapp.com/'));
//
//   if (response.statusCode == 200) {
//     return RegularUser.fromJson(jsonDecode(response.body));
//   } else {
//     throw Exception('Failed to fetch user');
//   }
// }
//
// Future<Map<String, dynamic>> postToServer(
//     {String api, dynamic body, Map<String, String> header}) async {
//   if (header == null) {
//     header = {'Content-Type': 'application/json'};
//   }
//   var res = await http.post("https://virtual-med-backend.herokuapp.com/$api",
//       headers: header, body: jsonEncode(body));
//
//   if (res.statusCode == 200) {
//     return {"msg": "Success", "body": json.decode(utf8.decode(res.bodyBytes))};
//   }
//   return {"msg": json.decode(utf8.decode(res.bodyBytes))['message']};
// }
