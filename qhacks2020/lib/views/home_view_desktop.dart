import 'package:flutter/material.dart';

import 'package:qhacks2020/screens/home_screen_desktop.dart';

class HomeViewDesktop extends StatefulWidget {
  const HomeViewDesktop({Key key}) : super(key: key);

  static const TextStyle optionStyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.bold);

  @override
  _HomeViewDesktopState createState() => _HomeViewDesktopState();
}

class _HomeViewDesktopState extends State<HomeViewDesktop> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Welcome to Green Kingston"),
      //   actions: <Widget>[
      //     FlatButton(
      //       onPressed: (){
      //         //do stuff
      //       },
      //       child: Text("Home",),
      //     ),
      //     FlatButton(
      //       onPressed: (){
      //         //do stuff
      //       },
      //       child: Text("Restaurants",),
      //     ),
      //     FlatButton(
      //       onPressed: (){
      //         //do stuff
      //       },
      //       child: Text("Shopping",),
      //     ),
      //   ],
      // ),

      body: Row(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(5),
            width: 70,
            child: Column(
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.home,
                      color: _selectedIndex == 0
                          ? Colors.green[400]
                          : Colors.black,
                    ),
                    onPressed: () {
                      _onItemTapped(0);
                    }),
                Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color:
                        _selectedIndex == 0 ? Colors.green[400] : Colors.black,
                  ),
                ),
                SizedBox(height: 40),
                IconButton(
                    icon: Icon(Icons.fastfood),
                    color:
                        _selectedIndex == 1 ? Colors.green[400] : Colors.black,
                    onPressed: () {
                      _onItemTapped(1);
                    }),
                Text(
                  "Food",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color:
                        _selectedIndex == 1 ? Colors.green[400] : Colors.black,
                  ),
                ),
                SizedBox(height: 40),
                IconButton(
                    icon: Icon(Icons.shopping_cart),
                    color:
                        _selectedIndex == 2 ? Colors.green[400] : Colors.black,
                    onPressed: () {
                      _onItemTapped(2);
                    }),
                Text(
                  "Shopping",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color:
                        _selectedIndex == 2 ? Colors.green[400] : Colors.black,
                  ),
                ),
              ],
            ),
          ),
          HomeScreenDesktop(_selectedIndex),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
} //class stateless widget
