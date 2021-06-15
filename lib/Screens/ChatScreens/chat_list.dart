import 'package:flutter/material.dart';
import 'package:virtual_med/Models/doctor-user.dart';
import 'package:virtual_med/Screens/ChatScreens/chat_doctor.dart';
import 'package:virtual_med/Screens/Doctor/components/chats/chat.dart';
import 'package:virtual_med/Models/chat_user.dart';

class ChatList extends StatelessWidget {
  var chatUsers = [
    DoctorUser(
        userId: 3,
        firstName: "Daniel",
        lastName: "Smith",
        email: "daniel.smith@email.com",
        phone: "+4412391292",
        location: 'London',
        specialization: 'Cardiology',
        password: "password"),
    DoctorUser(
        userId: 13,
        firstName: "Mike",
        lastName: "Stones",
        email: "mike.stones@email.com",
        phone: "072949239",
        location: 'Bristol',
        specialization: 'Orthopedics',
        password: "password")
  ];

  @override
  Widget build(BuildContext context) {
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
        ListView.builder(
          itemCount: chatUsers.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Chat(
              name:
                  "Dr." + chatUsers[index].firstName + " " + chatUsers[index].lastName,
              fragment: chatUsers[index].specialization,
              image: "images/profile_pic.png",
              time: "time here",
              receiver_id: chatUsers[index].userId,
            );
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
}
