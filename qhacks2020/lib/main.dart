import 'package:flutter/material.dart';

import './views/home_view.dart';
import './views/home_view.dart';
import 'package:qhacks2020/views/home_view.dart';
import 'package:qhacks2020/service_locator.dart'; 
import './widgets/business_card.dart';
import 'package:qhacks2020/services/navigation_service.dart'; 
import 'package:qhacks2020/routing/router.dart';
import 'service_locator.dart';

void main() {
  setupLocator(); 
  runApp(MyApp()); 
}
final List<String> names = <String>['The Tea Room', 'Starbucks', 'Tim Hortons'];
final List<String> description = <String>['A cool EngSoc coffee shop', 'Fancy corporate coffee', 'Cheap corporate coffee'];
final List<String> pics = <String>['assets/images/tearoom.jfif', 'assets/images/starbucks.png', 'assets/images/timhortons.jfif'];
final List<int> ratings = <int>[5, 2, 2];


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //
      // navigatorKey: locator<NavigationService>().navigatorKey,
      // onGenerateRoute: router.generateRoute,
      // initialRoute: routes.LoginRoute,
      //
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo QHACKS',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Open Sans',
        ) // textTheme
      ),
      home: HomeView(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),

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
          ListView.separated(
            //padding: const EdgeInsets.all(8),
            itemCount: names.length,
            itemBuilder: (BuildContext context, int index) {
              return BusinessCard(text1: names[index], text2: description[index], rating: ratings[index], filepath: pics[index]);
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

