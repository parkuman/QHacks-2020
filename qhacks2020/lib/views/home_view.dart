import 'package:flutter/material.dart';

import '../tools/responsive_builder.dart';
import './home_view_mobile.dart';
import './home_view_desktop.dart';

final List<String> names = <String>['The Tea Room', 'Starbucks', 'Tim Hortons'];
final List<String> description = <String>['A cool EngSoc coffee shop', 'Fancy corporate coffee', 'Cheap corporate coffee'];
final List<String> pics = <String>['assets/images/tearoom.jfif', 'assets/images/starbucks.png', 'assets/images/timhortons.jfif'];
final List<int> ratings = <int>[5, 2, 2];

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeViewMobile(),
      desktop: HomeViewDesktop(),
    );
  }
}