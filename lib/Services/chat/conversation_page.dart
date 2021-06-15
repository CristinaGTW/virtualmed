import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:virtual_med/Models/chat_user.dart';
import 'package:virtual_med/Models/doctor-user.dart';
import 'package:virtual_med/Models/regular-user.dart';
import 'package:virtual_med/Services/chat/chat-box.dart';
import 'package:virtual_med/Models/message.dart';
import 'package:virtual_med/components.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:provider/provider.dart';

import '../user-provider.dart';
import '../utils.dart';
import 'conversation-app-bar.dart';

enum MessageDirection { SENT, RECEIVED }

class ConversationPage extends StatefulWidget {
  final String name;
  final String image;
  final ChatUser chatModel;
  final ChatUser sourchat;
  final int receiver_id;

  const ConversationPage(
      {Key key,
      this.name,
      this.image,
      this.chatModel,
      this.sourchat,
      this.receiver_id})
      : super(key: key);

  @override
  State<StatefulWidget> createState() =>
      _ConversationPageState(name: name, image: image);
}

class _ConversationPageState extends State<ConversationPage> {
  final String name;
  final String image;
  RegularUser regularUser;
  DoctorUser doctorUser;
  var sender_id;

  final TextEditingController _controller = TextEditingController();
  IO.Socket socket = IO.io(SERVER_URL);
  StreamSocket streamSocket = StreamSocket();
  Future<List<Message>> futureMessageList;

  _ConversationPageState({Key key, @required this.name, @required this.image});

  @override
  Widget build(BuildContext context) {
    regularUser = context.watch<UserProvider>().regularUser;
    doctorUser = context.watch<UserProvider>().doctorUser;
    sender_id = regularUser != null ? regularUser.userId : doctorUser.userId;
    _retrieveMessage();
    return Scaffold(
      appBar: ConversationAppBar(name: name, image: image),
      body: Stack(
        children: <Widget>[
          ListView(
            children: [
              FutureBuilder<List<Message>>(
                future: futureMessageList,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ChatBox(chatMessage: snapshot.data[index]);
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                  // By default, show a loading spinner.
                  return Center(child: CircularProgressIndicator());
                },
              ),
              StreamBuilder(
                stream: streamSocket.getResponse,
                builder: (context, snapshot) {
                  return ListView.builder(
                    itemCount: snapshot.hasData ? 1 : 0,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ChatBox(
                          chatMessage: Message(
                              message: '${snapshot.data}',
                              time: DateTime.now().toString(),
                              direction: MessageDirection.SENT));
                    },
                  );
                },
              ),
            ],
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
                    child: Form(
                      child: TextFormField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: "New message ... ",
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
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
                  onPressed: _sendMessage,
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  backgroundColor: kPrimaryColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _sendMessage() async {
    if (_controller.text.isNotEmpty) {
      socket.emit('message', _controller.text);

      try {
        var res = await postToServer(api: 'SendMessage', body: {
          'sender_id': sender_id,
          'receiver_id': widget.receiver_id,
          'time': DateTime.now().toString(),
          'message': _controller.text
        });
        if (res['msg'] == 'Success') {
          print("Request sent successfully");
        }
      } catch (e) {
        final snackBar = SnackBar(
          content: Text('$e'),
          backgroundColor: kPrimaryColor,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }

  void _retrieveMessage() {
    futureMessageList = fetchMessages();
    socket.onConnect((_) => print('User Connected'));
    socket.on('message', (data) {
      streamSocket.addResponse(data);
    });
  }

  Future<List<Message>> fetchMessages() async {
    var res = await postToServer(
        api: 'FetchMessages',
        body: {'sender_id': sender_id, 'receiver_id': widget.receiver_id});
    if (res['msg'] == 'Success') {
      List<Message> messages = List<Message>();
      for (var msg in res['body']) {
        if (msg['sender_id'] == sender_id) {
          messages.add(Message(
              message: msg['message'],
              direction: MessageDirection.SENT,
              time: msg['time']));
        } else {
          messages.add(Message(
              message: msg['message'],
              direction: MessageDirection.RECEIVED,
              time: msg['time']));
        }
      }
      return messages;
    }
  }
}
