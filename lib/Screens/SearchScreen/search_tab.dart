import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/diagnosis-overview.dart';
import 'package:virtual_med/components/top-title.dart';

import '../../components.dart';
import 'components/disease-page.dart';

class SearchTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  final ScrollController _controller = ScrollController();
  bool _isLoading = false;
  var loadedList = DiagnosisOverview.diagnoses.entries.take(20).toList();
  int _currentIndex = 0;
  String disease = "";
  String keyWords = "";

  @override
  void initState() {
    _controller.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _onScroll() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        _isLoading = true;
      });
      _fetchData();
    }
  }

  Future _fetchData() async {
    await new Future.delayed(new Duration(seconds: 2));
    int lastIndex = loadedList.length;

    setState(() {
      loadedList
          .addAll(DiagnosisOverview.diagnoses.entries.skip(lastIndex).take(20));
      _isLoading = false;
    });
  }

  void setProgress(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (_currentIndex) {
      case 0:
        return getMostSearchedPage();
      case 1:
        return getDiseasePage(disease);
    }
    return Scaffold(
      body: Text("Error"),
    );
  }

  Widget getMostSearchedPage() {
    return Container(
      color: kPrimaryBgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            height: 50,
            child: TextField(
                cursorColor: Colors.black,
                maxLines: 1,
                style: TextStyle(fontSize: 18),
                onChanged: (value) {
                  setState(() {
                    keyWords = value;
                  });
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintText: 'Search',
                )
                // suffix: goButton()),
                ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                border: Border.all(
                  color: kPrimaryLightColor,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: TopTitle(
                      topMargin: 20.0,
                      title: keyWords == ""
                          ? "Most Searched"
                          : "Results for: \"" + keyWords + "\"",
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: getArticles(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getArticles() {
    return ListView.builder(
      controller: _controller,
      itemCount: _isLoading ? loadedList.length + 1 : loadedList.length,
      itemBuilder: (context, index) {
        if (loadedList.length == index) {
          return Center(child: CircularProgressIndicator());
        }
        if (!elemContainsKey(index)) {
          _fetchData();
          return Container();
        }
        var diagnosis = loadedList.elementAt(index).key;
        String overview = loadedList.elementAt(index).value['overview'];
        return Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: kPrimaryBgColor,
            border: Border.all(
              color: kPrimaryBgColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: <Widget>[
              Text(
                diagnosis,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.topLeft,
                child: Text(
                  overview.length > 200
                      ? overview.substring(0, 200) + "..."
                      : overview,
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: TextButton(
                  onPressed: () {
                    disease = diagnosis;
                    setProgress(1);
                  },
                  child: Text("More about this"),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget goButton() {
    return Container(
        padding: EdgeInsets.only(top: 2, bottom: 2),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          border: Border.all(
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            "Go",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ));
  }

  Widget getDiseasePage(String disease) {
    return DiseasePage(disease: disease);
  }

  bool elemContainsKey(int index) {
    bool keyContains = loadedList
        .elementAt(index)
        .key
        .toLowerCase()
        .contains(keyWords.toLowerCase());
    bool overviewContains =
        (loadedList.elementAt(index).value['overview'] as String)
            .toLowerCase()
            .contains(keyWords.toLowerCase());
    bool tryContains = false;
    bool avoidContains = false;

    List tries = loadedList.elementAt(index).value['try'];
    if (tries != null) {
      tryContains = tries
          .map((e) =>
              (e as String).toLowerCase().contains(keyWords.toLowerCase()))
          .reduce((value, element) => value || element);
    }
    List avoids = loadedList.elementAt(index).value['avoid'];
    if (avoids != null) {
      avoidContains = avoids
          .map((e) =>
              (e as String).toLowerCase().contains(keyWords.toLowerCase()))
          .reduce((value, element) => value || element);
    }
    return keyContains || overviewContains || tryContains || avoidContains;
  }
}
