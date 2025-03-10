import 'package:flutter/material.dart';
import 'package:virtual_med/components.dart';

class ConversationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String name;
  final String image;

  const ConversationAppBar({Key key, @required this.name, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        foregroundColor: Colors.red,
        elevation: 0,
        backgroundColor: Colors.red,
        actions: [
          // PopupMenuButton(itemBuilder: itemBuilder)
        ],
        title: Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(
            left: 50,
          ),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                backgroundImage: image != null
                    ? AssetImage(image)
                    : AssetImage("assets/images/profile_pic.png"),
                maxRadius: 20,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              // Icon(
              //   Icons.more_vert,
              //   color: Colors.white,
              // )
            ],
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);
}
