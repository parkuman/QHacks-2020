import 'package:flutter/material.dart';

import '../tools/responsive_builder.dart';
import './home_view_mobile.dart';
import './home_view_desktop.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeViewMobile(),
      desktop: HomeViewDesktop(),
    );
  }
}
