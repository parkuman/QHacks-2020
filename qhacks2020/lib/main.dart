import 'package:flutter/material.dart';
import './widgets/business_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo QHACKS',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Green Kingston'), //title: 'Green Kingston'
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
                'Welcome to `Green Kingston',
                style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ],
          ),
          ),
          Row(children: <Widget>[
            BusinessCard(text1: "Business Name ", text2: "Business Description ", text3: "And another thing ",),
          ],),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

