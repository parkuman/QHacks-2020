import 'package:qhacks2020/widgets/course_details/course_details.dart';
import 'package:flutter/material.dart';
import 'package:qhacks2020/widgets/navigation_bar/navigation_bar.dart';
import 'package:qhacks2020/widgets/centered_view/centered_view.dart';
import 'package:qhacks2020/widgets/call_to_action/call_to_action.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  } //Widget build
} //class stateless widget 


//this goes under return statement
//      but it is Scaffold (this is a backup)
// backgroundColor: Colors.white, 
//         body: CenteredView(
//           child: Column(
//             children: <Widget>[
//               NavigationBar(),
//               Expanded(
//                 child: Row(children: [
//                   CourseDetails(), 
//                   Expanded(
//                     child: Center(
//                       child: CallToAction('Join Course')))
//                 ])
//               ) 
//             ]
//           ),
//         ),