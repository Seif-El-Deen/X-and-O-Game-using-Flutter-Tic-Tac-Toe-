import 'package:flutter/material.dart';
import 'package:tic_tac_toe_x_and_o_game/description.dart';
import 'package:tic_tac_toe_x_and_o_game/gameDeveloper.dart';
import 'package:tic_tac_toe_x_and_o_game/home.dart';
import 'package:tic_tac_toe_x_and_o_game/play.dart';
import 'package:tic_tac_toe_x_and_o_game/play_with_computer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => Home(),
        'Play': (context) => Play(),
        // 'Play With Computer': (context) => PlayWithComputer(),
        'Description': (context) => Description(),
        'Game Developer': (context) => GameDeveloper(),
      },
    );
  }
}
