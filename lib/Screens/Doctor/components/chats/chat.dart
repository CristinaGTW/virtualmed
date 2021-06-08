import 'package:flutter/material.dart';

import '../../../../Services/chat/conversation_page.dart';

// ignore: must_be_immutable
class Chat extends StatefulWidget {
  String name;
  String fragment;
  String image;
  String time;

  Chat(
      {@required this.name,
        @required this.fragment,
        @required this.image,
        @required this.time});

  @override
  State<StatefulWidget> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ConversationPage(name: widget.name, image: widget.image);
        }));
      },
      child: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(left: 20, right: 20, top: 5),
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.image),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(widget.name),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.fragment,
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              widget.time,
              style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
            ),
          ],
        ),
      ),
    );
  }
}