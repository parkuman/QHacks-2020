import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  final String text1, text2, text3;
  
  BusinessCard({this.text1, this.text2, this.text3});
  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.lightBlueAccent,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[Text(text1), Text(text2), Text(text3)],
        ),
      ),
    );
  }
}
