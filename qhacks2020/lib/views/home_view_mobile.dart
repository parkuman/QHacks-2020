import 'package:qhacks2020/widgets/course_details/course_details.dart';
import 'package:flutter/material.dart';
import 'package:qhacks2020/widgets/navigation_bar/navigation_bar.dart';
import 'package:qhacks2020/widgets/centered_view/centered_view.dart';
import 'package:qhacks2020/widgets/call_to_action/call_to_action.dart';
import 'package:qhacks2020/screens/home_screen_mobile.dart';

class HomeViewMobile extends StatefulWidget {
  const HomeViewMobile({Key key}) : super(key: key);

  @override
  _HomeViewMobileState createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends State<HomeViewMobile> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  static const List<String> _navName = <String>['Home', 'Restaurants', 'Shopping'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text('Restaurants'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Shopping'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[400],
        onTap: _onItemTapped,
      ),
      body: CenteredView(
        child: Expanded(
          child: HomeScreenMobile(_navName, _selectedIndex),
        ),
      ),
    );
  }
} //class stateless widget
