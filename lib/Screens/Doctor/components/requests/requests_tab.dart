import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:virtual_med/Services/utils.dart';

import 'components/request.dart';

class RequestsTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RequestsTabState();
}

class _RequestsTabState extends State<RequestsTab> {
  Future<List<Request>> futureUserRequests;
  List<Request> userRequests;

  @override
  void initState() {
    super.initState();
    initUserRequests();
  }

  void initUserRequests() async {
    futureUserRequests = getRequests();
  }

  void toRequestList() async {
    userRequests = await futureUserRequests;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var sidePadding = (size.width * 0.2) / 2;
    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // searchBar(sidePadding),
            FutureBuilder<List<Request>>(
              future: futureUserRequests,
              builder: (context, snapshot) {
                toRequestList();
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: userRequests.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Request(
                          patient_id: userRequests[index].patient_id,
                          name: userRequests[index].name,
                          diagnosis: userRequests[index].diagnosis,
                          image: userRequests[index].image,
                          time: userRequests[index].time.substring(0, 16),
                          status: userRequests[index].status,
                          phone: userRequests[index].phone,
                          age: userRequests[index].age,
                          height: userRequests[index].height,
                          weight: userRequests[index].weight,
                          chronic_diseases:
                              userRequests[index].chronic_diseases,
                          query_answers: userRequests[index].query_answers,
                        );
                      });
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

  Future<List<Request>> getRequests() async {
    var res = await postToServer(api: 'getRequests', body: {
      'specialization': 'General',
    });
    if (res['msg'] == 'Success') {
      List<Request> requests = List<Request>();
      res['body'].forEach((req) => requests.add(Request(
            patient_id: req['patient_id'],
            name: req['full_name'],
            status: 'Pending',
            time: req['time'],
            image: 'assets/images/profile_pic.png',
            phone: req['phone'],
            query_answers: req['query_answers'],
            weight: req['weight'],
            diagnosis: req['diagnosis'],
            age: req['age'],
            chronic_diseases: req['chronic_diseases'],
            height: req['height'],
          )));
      return requests;
    }
  }
}
