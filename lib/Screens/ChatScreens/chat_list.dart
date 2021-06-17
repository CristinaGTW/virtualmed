import 'package:flutter/material.dart';
import 'package:virtual_med/Models/doctor-user.dart';
import 'package:virtual_med/Models/regular-user.dart';
import 'package:virtual_med/Models/user.dart';
import 'package:virtual_med/Screens/Doctor/components/chats/chat.dart';

import 'package:provider/provider.dart';
import 'package:virtual_med/Services/user-provider.dart';
import 'package:virtual_med/Services/utils.dart';

class ChatList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  Future<List<User>> futureChatUsers;
  RegularUser regularUser;

  @override
  Widget build(BuildContext context) {
    regularUser = context.watch<UserProvider>().regularUser;
    futureChatUsers = _fetchConnections();

    Size size = MediaQuery.of(context).size;
    var sidePadding = (size.width * 0.2) / 2;
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
        FutureBuilder<List<User>>(
          future: futureChatUsers,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  if (snapshot.data[index].acc_type == AccountType.DOCTOR) {
                    return Chat(
                        name: "Dr. " +
                            (snapshot.data[index] as DoctorUser).firstName +
                            " " +
                            (snapshot.data[index] as DoctorUser).lastName,
                        fragment:
                            (snapshot.data[index] as DoctorUser).specialization,
                        image: "assets/images/profile_pic.png",
                        time: "Accepted Request",
                        receiver_id:
                            (snapshot.data[index] as DoctorUser).userId);
                  }
                  return Chat(
                      name: (snapshot.data[index] as RegularUser).firstName +
                          " " +
                          (snapshot.data[index] as RegularUser).lastName,
                      fragment: (snapshot.data[index] as RegularUser).community,
                      image: "assets/images/profile_pic.png",
                      time: "Community Buddy",
                      receiver_id:
                          (snapshot.data[index] as RegularUser).userId);
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

  Future<List<User>> _fetchConnections() async {
    List<User> connections = List<User>();

    var res = await postToServer(
        api: 'GetConnections', body: {"user_id": regularUser.userId});

    if (res['msg'] == 'Success') {
      for (var connection in res['body']) {
        if (!alreadyAdded(connection['id'], connections)) {
          if (connection['acc_type'] == "doctor") {
            connections.add(DoctorUser(
              userId: connection['id'],
              firstName: connection['first_name'],
              lastName: connection['last_name'],
              email: connection['email'],
              phone: connection['phone'],
              specialization: connection['specialization'],
              location: connection['location'],
            ));
          } else {
            var community = await postToServer(
                api: 'GetCommunity', body: {"userId": connection['id']});

            connections.add(RegularUser(
                userId: connection['id'],
                firstName: connection['first_name'],
                lastName: connection['last_name'],
                email: connection['email'],
                phone: connection['phone'],
                community: community['body'][0]['community']));
          }
        }
      }
      return connections;
    }
  }

  bool alreadyAdded(int userId, List<User> connections) {
    for (var user in connections) {
      if (user.acc_type == AccountType.DOCTOR) {
        var doctorUser = user as DoctorUser;
        if (doctorUser.userId == userId) {
          return true;
        }
      } else {
        var regularUser = user as RegularUser;
        if (regularUser.userId == userId) {
          return true;
        }
      }
    }
    return false;
  }
}
