import 'package:flutter/material.dart';

import 'package:qhacks2020/views/newbusiness_card.dart';

class HomeScreenDesktop extends StatelessWidget {
  final int _selectedIndex;
  HomeScreenDesktop(this._selectedIndex);
  final List<String> names = <String>['The Tea Room', 'Starbucks', 'Tim Hortons'];
  final List<String> description = <String>[
    'A cool EngSoc coffee shop',
    'Fancy corporate coffee',
    'Cheap corporate coffee'
  ];
  final List<String> pics = <String>[
    'assets/images/tearoom.jfif',
    'assets/images/starbucks.png',
    'assets/images/timhortons.jfif'
  ];
  final List<int> ratings = <int>[5, 2, 2];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
            child: Stack(
              children: <Widget>[
                Center(
                  child: new Image.asset(
                    'assets/images/kingstoncityhall.jpg',
                    width: size.width,
                    height: size.height,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: 400,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(8),
                    itemCount: names.length,
                    itemBuilder: (BuildContext context, int index) {
                      return BusinessCard(
                          text1: names[index],
                          text2: description[index],
                          rating: ratings[index],
                          filepath: pics[index]);
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ),
                ),
              ],
            ),
          );
  }
}