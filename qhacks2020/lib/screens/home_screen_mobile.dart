import 'package:flutter/material.dart';

class HomeScreenMobile extends StatelessWidget {
  final List<String> _navName;
  final int _selectedIndex;
  HomeScreenMobile(this._navName, this._selectedIndex);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  _navName[_selectedIndex],
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 50, height: 0.9),
                ),
              ),
            ],
          ),
        ),
        // Expanded(child: Center(child: CallToAction('Join Course')))
      ],
    );
  }
}
