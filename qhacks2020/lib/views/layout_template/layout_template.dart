import 'package:flutter/material.dart';
import 'package:qhacks2020/widgets/centered_view/centered_view.dart';
import 'package:qhacks2020/widgets/navigation_bar/navigation_bar.dart';
import 'package:qhacks2020/routing/router.dart';
import 'package:qhacks2020/routing/route_names.dart';
import 'package:qhacks2020/location.dart';
import 'package:qhacks2020/tools/responsive_builder.dart';
import 'package:qhacks2020/services/navigation_service.dart';
import 'package:qhacks2020/widgets/navigation_bar/navigation_bar_mobile.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        //drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                  child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}