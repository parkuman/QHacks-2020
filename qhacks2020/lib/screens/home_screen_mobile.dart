import 'package:flutter/material.dart';
import '../views/newbusiness_card.dart';

final List<String> names = <String>['The Tea Room', 'Starbucks', 'Tim Hortons'];
final List<String> description = <String>['A cool EngSoc coffee shop', 'Fancy corporate coffee', 'Cheap corporate coffee'];
final List<String> pics = <String>['assets/images/tearoom.jfif', 'assets/images/starbucks.png', 'assets/images/timhortons.jfif'];
final List<int> ratings = <int>[5, 2, 2];

class HomeScreenMobile extends StatelessWidget {
  final List<String> _navName;
  final int _selectedIndex;
  HomeScreenMobile(this._navName, this._selectedIndex);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  _navName[_selectedIndex],
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 50, height: 0.9),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 400,
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(8),
            itemCount: names.length,
            itemBuilder: (BuildContext context, int index) {
              return BusinessCard(text1: names[index], text2: description[index], rating: ratings[index], filepath: pics[index]);
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
        ),
        // Expanded(child: Center(child: CallToAction('Join Course')))
      ],
    );
  }
}
