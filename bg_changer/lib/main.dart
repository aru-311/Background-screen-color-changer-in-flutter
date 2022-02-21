import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG Changer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Background'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  var colors = [
    Colors.amber,
    Colors.blueGrey,
    Colors.brown,
    Colors.lightGreenAccent,
    Colors.indigoAccent,
    Colors.pink,
    Colors.red,
  ];
  var currentColor = Colors.white;
  setRandomColor() {
    var rnd = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rnd];
    });
  }

  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          color: Colors.black,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text('change it!'),
          onPressed: setRandomColor,
        ),
      ),
    );
  }
}
