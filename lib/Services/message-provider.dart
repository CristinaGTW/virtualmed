import 'package:flutter/cupertino.dart';
import 'package:virtual_med/Models/message.dart';
import 'package:virtual_med/Services/chat/conversation_page.dart';

class MessageProvider with ChangeNotifier {
  List<Message> messages = List<Message>();

  addMessage(String message) {
    messages.add(Message(
        message: message,
        time: DateTime.now().toString(),
        direction: MessageDirection.RECEIVED));
    notifyListeners();
  }
// List<Pair<String, String>> messages;
//
// addMessage(String message, String time) {
//   messages.add(Pair(message, time));
//   notifyListeners();
// }
}

// class Pair<T, S> {
//   final T fst;
//   final S snd;
//
//   Pair(this.fst, this.snd);
// }
