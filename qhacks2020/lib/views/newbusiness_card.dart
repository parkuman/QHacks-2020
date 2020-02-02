import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  final String text1, text2, filepath;
  final rating;

  BusinessCard({this.text1, this.text2, this.rating, this.filepath});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(filepath, height: 300, width: 300, fit: BoxFit.cover),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(text1,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text(text2, textAlign: TextAlign.left),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text("$rating/5🍃", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
