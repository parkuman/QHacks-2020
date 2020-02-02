import 'package:flutter/material.dart';
import 'package:qhacks2020/views/episodes/episodes_view.dart';
import 'package:qhacks2020/routing/route_names.dart';
import 'package:qhacks2020/widgets/navigation_bar/navbar_item.dart';


class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const DrawerItem(this.title, this.icon, this.navigationPath);

  //not sure if the spacing/placement is right for the column stuff

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(
            width: 30,
          ),
          NavBarItem(title, navigationPath)
        ],
      ),
      // child: Column(
      //   children: <Widget>[
      //     NavigationDrawerHeader(),
      //     DrawerItem('Episodes', Icons.videocam, EpisodesRoute),
      //     DrawerItem('About', Icons.help, AboutRoute),
      //   ],
      // ),
    );
  }
}