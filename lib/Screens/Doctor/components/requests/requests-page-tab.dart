import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/Doctor/components/requests/accepted-requests.dart';
import 'package:virtual_med/Screens/Doctor/components/requests/pending-requests-tab.dart';
import 'package:virtual_med/components.dart';

class RequestsPage extends StatefulWidget {
  @override
  _RequestsPageState createState() => _RequestsPageState();
}

class _RequestsPageState extends State<RequestsPage>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _tabController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TabBar(
          controller: _tabController,
          indicatorColor: kPrimaryColor,
          labelColor: kPrimaryColor,
          unselectedLabelColor: Colors.black54,
          isScrollable: true,
          tabs: <Widget>[
            Tab(
              text: "Pending Requests",
            ),
            Tab(
              text: "Accepted Requests",
            ),
          ],
        ),
        Container(
          height: size.height * 0.7,
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[PendingRequestsTab(), AcceptedRequestsTab()],
          ),
        )
      ],
    );
  }
}
