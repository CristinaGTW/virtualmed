import 'package:flutter/material.dart';
import 'package:virtual_med/Services/chat/conversation_page.dart';
import 'package:virtual_med/Models/message.dart';

import '../../components.dart';

class ChatBox extends StatefulWidget {
  final Message chatMessage;

  const ChatBox({Key key, @required this.chatMessage}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Align(
        alignment: widget.chatMessage.direction == MessageDirection.RECEIVED
            ? Alignment.topLeft
            : Alignment.topRight,
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(20),
            borderRadius:
                widget.chatMessage.direction == MessageDirection.RECEIVED
                    ? BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))
                    : BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
            color: kPrimaryBgColor,
          ),
          padding: EdgeInsets.all(10),
          child: Text(
            widget.chatMessage.message,
          ),
        ),
      ),
    );
  }
}
