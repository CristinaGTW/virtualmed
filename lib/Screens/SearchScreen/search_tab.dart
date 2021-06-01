import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFC4C4C4),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              cursorColor: Colors.black,
              maxLines: null,
              keyboardType: TextInputType.multiline,
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
                  hintText: 'Select'),
            ),
          ),
        ],
      ),
    );
  }
}
