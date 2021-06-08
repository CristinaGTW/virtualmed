import 'package:flutter/foundation.dart';

class ChatUser {
  final String name;
  final String diagnosis;
  final String image;
  final String time;

  ChatUser(
      {@required this.name,
      @required this.diagnosis,
      @required this.image,
      @required this.time});
}
