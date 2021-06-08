import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:virtual_med/Services/chat/chat-box.dart';
import 'package:virtual_med/Services/chat/message.dart';
import 'package:virtual_med/components.dart';

import 'conversation-app-bar.dart';

enum MessageDirection { SENT, RECEIVED }

class ConversationPage extends StatelessWidget {
  final String name;
  final String image;

  List<Message> messages = [
    Message(
        message:
            "Hey, Cristina! I see you have a problem with high blood pressure. May I help you? Would you like to schedule an appointment?",
        direction: MessageDirection.SENT),
    Message(
        message:
            "Hello! Thank you for contacting me. Yes, I am a bit worried and I would like to schedule an appoinment as soon as possible",
        direction: MessageDirection.RECEIVED)
  ];

  ConversationPage({Key key, @required this.name, @required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ConversationAppBar(name: name, image: image),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ChatBox(chatMessage: messages[index]);
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 80,
              padding: EdgeInsets.only(left: 20, bottom: 10),
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "New message ... ",
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      border: InputBorder.none,
                    ),
                  ))
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
                padding: EdgeInsets.only(
                  right: 30,
                  bottom: 25,
                ),
                child: Container(
                  height: 40,
                  width: 40,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    backgroundColor: kPrimaryColor,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
