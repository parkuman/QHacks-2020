import 'package:qhacks2020/widgets/course_details/course_details.dart';
import 'package:flutter/material.dart';
import 'package:qhacks2020/widgets/navigation_bar.dart';
import 'package:qhacks2020/widgets/centered_view/centered_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white, 
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: Row(children: [
                  CourseDetails(), 
                ])
              ) //expanded
            ]
          ), //column
        ), //body
      ); //Scaffold
  } //Widget build
} //class stateless widget 