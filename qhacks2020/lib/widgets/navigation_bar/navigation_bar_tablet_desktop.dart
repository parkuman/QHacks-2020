import 'package:flutter/material.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';


class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[ //first child: the image
          NavBarLogo(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[ //second child: row w/ 2 nav bars
              NavBarItem('Episodes'),
              SizedBox(
                height: 60,
              ),
              NavBarItem('About'),
            ],
          )
        ],
      ),
    );
  }
}