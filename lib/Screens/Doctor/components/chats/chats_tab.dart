import 'package:flutter/material.dart';

import 'chat.dart';
import 'chat_user.dart';

class ChatTab extends StatelessWidget {
  var chatUsers = [
    ChatUser(
        name: "John Smith",
        diagnosis: "Possible Diagnosis: Hypertension, Heart Palpitations",
        image: "images/profile_pic.png",
        time: "Now"),
    ChatUser(
        name: "Peter Jones",
        diagnosis: "Possible Diagnosis: Hypertension, Diabetes",
        image: "images/profile_pic.png",
        time: "Yesterday"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var sidePadding = (size.width - 400) / 2;
    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            searchBar(sidePadding),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Chat(
                    name: chatUsers[index].name,
                    fragment: chatUsers[index].diagnosis,
                    image: chatUsers[index].image,
                    time: chatUsers[index].time);
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
}
