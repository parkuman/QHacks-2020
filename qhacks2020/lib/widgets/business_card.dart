import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  final String text1, text2;
  
  BusinessCard({this.text1, this.text2});
  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(15),
        height: 375,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(children: <Widget>[Text(text1)]), 
            Row(children: <Widget>[Text(text2)]),
            Image.asset("assets/images/tearoom.jfif", height: 300, width: 300),
          ],
        ),
      ),
    );
  }
}
