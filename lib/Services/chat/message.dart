import 'package:flutter/foundation.dart';
import 'package:virtual_med/Services/chat/conversation_page.dart';

class Message {
  final String message;
  final MessageDirection direction;

  Message({@required this.message, @required this.direction});
}
