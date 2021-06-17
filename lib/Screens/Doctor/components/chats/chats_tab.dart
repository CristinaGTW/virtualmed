import 'package:flutter/material.dart';
import 'package:virtual_med/Models/doctor-user.dart';
import 'package:virtual_med/Models/regular-user.dart';
import 'package:virtual_med/Services/user-provider.dart';
import 'package:virtual_med/Services/utils.dart';

import 'package:provider/provider.dart';

import 'chat.dart';

class ChatTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  Future<List<RegularUser>> futureChatUsers;
  DoctorUser doctorUser;
  Widget pageContent;

  @override
  Widget build(BuildContext context) {
    doctorUser = context.watch<UserProvider>().doctorUser;
    futureChatUsers = _fetchConnections();

    Size size = MediaQuery.of(context).size;
    var sidePadding = (size.width * 0.2) / 2;
    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // searchBar(sidePadding),
            FutureBuilder<List<RegularUser>>(
              future: futureChatUsers,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Chat(
                          name: snapshot.data[index].firstName +
                              " " +
                              snapshot.data[index].lastName,
                          fragment: snapshot.data[index].phone,
                          image: "assets/images/profile_pic.png",
                          time: "Accepted Request",
                          receiver_id: snapshot.data[index].userId);
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
      ),
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

  Future<List<RegularUser>> _fetchConnections() async {
    List<RegularUser> connections = List<RegularUser>();

    var res = await postToServer(
        api: 'GetConnections', body: {"user_id": doctorUser.userId});

    if (res['msg'] == 'Success') {
      for (var connection in res['body']) {
        connections.add(RegularUser(
          userId: connection['id'],
          firstName: connection['first_name'],
          lastName: connection['last_name'],
          email: connection['email'],
          phone: connection['phone'],
          birthdate: connection['birthdate'],
          height: connection['height'],
          weight: connection['weight'],
          chronic_diseases: connection['chronic_diseases'],
        ));
      }
      return connections;
    }
  }
}
