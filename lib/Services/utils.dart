import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
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
  final _socketResponse= StreamController<String>();

  void Function(String) get addResponse => _socketResponse.sink.add;

  Stream<String> get getResponse => _socketResponse.stream;

  void dispose(){
    _socketResponse.close();
  }
}




// void chatClient(String message) async {
//   // Dart client
//   IO.Socket socket = IO.io(SERVER_URL);
//   socket.onConnect((_) {
//     // print('User Connected');
//     socket.emit('message', message);
//   });
//   // socket.on('event', (data) => print(data));
//   socket.on('message', (data) {
//     print("Received: " + data);
//     MessageProvider().addMessage(data);
//   });
//   socket.onDisconnect((_) => print('disconnect'));
//   socket.on('fromServer', (_) => print(_));
// }
