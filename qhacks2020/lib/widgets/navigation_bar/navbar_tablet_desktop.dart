import 'package:flutter/material.dart';

import 'package:qhacks2020/widgets/navigation_bar/navbar_item.dart';

Widget build(BuildContext context) {
    return Container(
      height: 100,  //nav bar container height
      child: Row(  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[ //first child: the image
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('assets/logo.png'),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[ //second child: row w/ 2 nav bars
              NavBarItem('Episodes'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About'),
            ],
          )
        ],
      ),
    );
  }