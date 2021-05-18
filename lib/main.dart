import 'package:flutter/material.dart';
import 'package:learning_flutter_project/description.dart';
import 'package:learning_flutter_project/gameDeveloper.dart';
import 'package:learning_flutter_project/home.dart';
import 'package:learning_flutter_project/play.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => Home(),
        'play': (context) => Play(),
        'description': (context) => Description(),
        'game developer': (context) => GameDeveloper(),
      },
    );
  }
}
