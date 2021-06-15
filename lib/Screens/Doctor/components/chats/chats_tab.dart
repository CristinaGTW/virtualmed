import 'package:flutter/material.dart';
import 'package:virtual_med/Models/regular-user.dart';

import 'chat.dart';

class ChatTab extends StatelessWidget {
  var chatUsers = [
    RegularUser(
        userId: 1,
        firstName: "John",
        lastName: "Wilson",
        email: "john@email.com",
        phone: "+4478729752",
        password: "password"),
    RegularUser(
        userId: 2,
        firstName: "Ion",
        lastName: "Popescu",
        email: "ion@email.com",
        phone: "075216371",
        password: "password")
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
                  name: chatUsers[index].firstName +
                      " " +
                      chatUsers[index].lastName,
                  fragment: "Diagnosis here",
                  image: "images/profile_pic.png",
                  time: "time here",
                  receiver_id: chatUsers[index].userId,
                );
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
