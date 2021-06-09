import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:virtual_med/components/top-title.dart';

import '../../components.dart';

class SearchTab extends StatelessWidget {
  static const articles = [
    {
      "title": "Atopic eczema",
      "overview":
          "Atopic eczema (atopic dermatitis) is the most common form of eczema, a condition that causes the skin to become itchy, dry and cracked."
    },
    {
      "title": "Broken ankle",
      "overview":
          "Get medical advice as soon as possible if you think you have broken your ankle. It may need treatment to heal properly."
    },
    {
      "title": "Stomach ulcer",
      "overview":
          "Stomach ulcers, also known as gastric ulcers, are open sores that develop on the lining of the stomach."
    },
    {
      "title": "High temperature (fever) in adults",
      "overview":
          "Normal body temperature is different for everyone and changes during the day. A high temperature is usually considered to be 38C or above. This is sometimes called a fever."
    },
    {
      "title": "Hay fever",
      "overview":
          "Hay fever is usually worse between late March and September, especially when it's warm, humid and windy. This is when the pollen count is at its highest."
    },
    {
      "title": "Glandular fever",
      "overview":
          "Glandular fever mostly affects teenagers and young adults. It gets better without treatment, but it can make you feel very ill and last for weeks."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryBgColor,
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              cursorColor: Colors.black,
              maxLines: 1,
              style: TextStyle(fontSize: 18),
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
                  hintText: 'Select',
                  suffix: goButton()),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              border: Border.all(
                color: kPrimaryLightColor,
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: TopTitle(
                    topMargin: 20.0,
                    title: "Most Searched",
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: getArticles(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getArticles() {
    List<Widget> selectedArticles = [];
    for (int i = 0; i < articles.length; i++) {
      selectedArticles.add(Container(
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
              articles[i]["title"],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.topLeft,
              child: Text(
                articles[i]["overview"],
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextButton(
                onPressed: () {},
                child: Text("More about this"),
              ),
            )
          ],
        ),
      ));
    }
    return selectedArticles;
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
}
