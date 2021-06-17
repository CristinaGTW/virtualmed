import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:virtual_med/Models/message.dart';
import '../Models/regular-user.dart';

const String SERVER_URL = 'https://virtual-med-backend.herokuapp.com/';

Future<RegularUser> fetchRegularUser() async {
  final response = await http.get(Uri.parse(SERVER_URL + 'index'));

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
  var res =
      await http.post(SERVER_URL + "$api", headers: header, body: jsonEncode(body));

  if (res.statusCode == 200) {
    var body = json.decode(utf8.decode(res.bodyBytes));
    return {"msg": "Success", "body": body};
  }
  return {"msg": json.decode(utf8.decode(res.bodyBytes))['message']};
}

class StreamSocket{
  final _socketResponse= StreamController<Message>();

  void Function(Message) get addResponse => _socketResponse.sink.add;

  Stream<Message> get getResponse => _socketResponse.stream;

  void dispose(){
    _socketResponse.close();
  }
}
