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
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300, maxHeight: 385),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(text1, textAlign: TextAlign.center), 
            Text(text2, textAlign: TextAlign.center),
            Image.asset(filepath, height: 300, width: 300),
            Container(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: rating,
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset('assets/images/leaf.png', height: 30, width: 30);
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
