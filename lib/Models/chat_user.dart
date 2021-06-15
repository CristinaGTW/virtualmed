import 'package:flutter/foundation.dart';

class ChatUser {
  final int id;
  final String name;
  final String diagnosis;
  final String image;
  final String time;
  final String currentMessage;

  ChatUser({
    @required this.name,
    @required this.diagnosis,
    @required this.image,
    @required this.time,
    @required this.id,
    @required this.currentMessage,
  });
}
