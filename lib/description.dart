import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text(
            'Game Description',
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * .9,
              width: double.infinity,
              color: Colors.black87,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '''X & O game is a very simple

 game where all you have to

do to win is to get 3 similar 

letters(x or o) behind each 

others horizontally or 

vertically or on one of the two

diagonals.

For Example:
ooo   o     o               o    
        o       o           o
        o          o      o
''',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 2,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
