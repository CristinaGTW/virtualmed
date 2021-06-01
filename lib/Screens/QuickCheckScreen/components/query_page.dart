import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/query_body.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/top-title.dart';

class QueryPage extends StatelessWidget {
  final String bodyPart;
  final String bodyPartImage;

  const QueryPage({Key key, @required this.bodyPart, this.bodyPartImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFC4C4C4),
      child: Column(
        children: <Widget>[
          TopTitle(
            topMargin: 20.0,
            title: "You selected: " + bodyPart,
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            width: 200,
            height: 200,
            child: Image.asset(bodyPartImage),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: QueryBody(
              bodyPart: bodyPart,
            ),
          ),
        ],
      ),
    );
  }
}
