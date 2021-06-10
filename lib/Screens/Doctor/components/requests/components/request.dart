import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/Doctor/components/requests/components/request-page.dart';

import '../../../../../components.dart';

class Request extends StatefulWidget {
  final String name;
  final String diagnosis;
  final String image;
  final String time;
  final String status;
  final String phone;
  final String age;
  final String height;
  final String weight;
  final String chronic_diseases;
  final String query_answers;

  Request(
      {@required this.name,
        @required this.diagnosis,
        @required this.image,
        @required this.time,
        @required this.status,
        @required this.phone,
        @required this.age,
        @required this.height,
        @required this.weight,
        @required this.chronic_diseases,
        @required this.query_answers});

  @override
  State<StatefulWidget> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return RequestPage(
            name: widget.name,
            image: widget.image,
            phone: widget.phone,
            age: widget.age,
            height: widget.height,
            weight: widget.weight,
            chronic_diseases: widget.chronic_diseases,
            query_answers: widget.query_answers,
            diagnosis: widget.diagnosis,
          );
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
                          "Premliminary diagnoses:" + widget.diagnosis,
                          style: TextStyle(fontSize: 14, color: kPrimaryColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Pending request ...",
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