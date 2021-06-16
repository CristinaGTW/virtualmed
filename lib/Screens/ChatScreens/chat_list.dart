import 'package:flutter/material.dart';
import 'package:virtual_med/Models/doctor-user.dart';
import 'package:virtual_med/Models/regular-user.dart';
import 'package:virtual_med/Screens/Doctor/components/chats/chat.dart';

import 'package:provider/provider.dart';
import 'package:virtual_med/Services/user-provider.dart';
import 'package:virtual_med/Services/utils.dart';

class ChatList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatListState();

}

class _ChatListState extends State<ChatList> {
  Future<List<DoctorUser>> futureChatUsers;
  RegularUser regularUser;

  @override
  Widget build(BuildContext context) {
    regularUser = context.watch<UserProvider>().regularUser;
    futureChatUsers = _fetchConnections();

    Size size = MediaQuery.of(context).size;
    var sidePadding = (size.width - 400) / 2;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Text("Chats"),
            ],
          ),
        ),
      ),
      body: Column(children: [
        searchBar(sidePadding),
        FutureBuilder<List<DoctorUser>>(
          future: futureChatUsers,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Chat(
                      name: "Dr. " + snapshot.data[index].firstName +
                          " " +
                          snapshot.data[index].lastName,
                      fragment: snapshot.data[index].specialization,
                      image: "images/profile_pic.png",
                      time: "Accepted Request",
                      receiver_id: snapshot.data[index].userId);
                },
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            // By default, show a loading spinner.
            return Center(child: CircularProgressIndicator());
          },
        ),
      ]),
    );
  }

  Widget searchBar(double sidePadding) {
    return Container(
      width: 400,
      margin: EdgeInsets.only(
          top: 20, left: sidePadding, right: sidePadding, bottom: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search...",
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(10),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                color: Colors.black,
                // color: Colors.white
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                color: Colors.black,
                // color: Colors.white,
              )),
        ),
      ),
    );
  }

  Future<List<DoctorUser>> _fetchConnections() async {
    List<DoctorUser> connections = List<DoctorUser>();

    var res = await postToServer(
        api: 'GetConnections', body: {"user_id": regularUser.userId});

    if (res['msg'] == 'Success') {
      for (var connection in res['body']) {
        connections.add(DoctorUser(
          userId: connection['id'],
          firstName: connection['first_name'],
          lastName: connection['last_name'],
          email: connection['email'],
          phone: connection['phone'],
          specialization: connection['specialization'],
          location: connection['location'],
        ));
      }
      return connections;
    }
  }
}
