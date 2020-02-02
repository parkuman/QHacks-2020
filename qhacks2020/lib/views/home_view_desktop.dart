import 'package:qhacks2020/widgets/course_details/course_details.dart';
import 'package:flutter/material.dart';
import 'package:qhacks2020/widgets/navigation_bar/navigation_bar.dart';
import 'package:qhacks2020/widgets/centered_view/centered_view.dart';
import 'package:qhacks2020/widgets/call_to_action/call_to_action.dart';

import 'newbusiness_card.dart';


final List<String> names = <String>['The Tea Room', 'Starbucks', 'Tim Hortons'];
final List<String> description = <String>['A cool EngSoc coffee shop', 'Fancy corporate coffee', 'Cheap corporate coffee'];
final List<String> pics = <String>['assets/images/tearoom.jfif', 'assets/images/starbucks.png', 'assets/images/timhortons.jfif'];
final List<int> ratings = <int>[5, 2, 2];

class HomeViewDesktop extends StatelessWidget {
  const HomeViewDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Green Kingston"),
        actions: <Widget>[
          FlatButton(
            onPressed: (){
              //do stuff
            },
            child: Text("Home",),
          ),
        ],
      ),
      
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/images/kingstoncityhall.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to Green Kingston',
                style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 50),
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
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
} //class stateless widget
