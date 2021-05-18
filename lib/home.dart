import 'package:flutter/material.dart';
import 'package:learning_flutter_project/customWidgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
          child: Stack(
            children: [
              Column(
                children: [
                  rowDesign(),
                  rowDesign(),
                  rowDesign(),
                  rowDesign(),
                  rowDesign(),
                  rowDesign(),
                ],
              ),
              AlertDialog(
                backgroundColor: Colors.black,
                content: Container(
                  height: 220,
                  width: 300,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        color: Colors.blueAccent,
                        child: Text(
                          'Play',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'play');
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(
                        color: Colors.blueAccent,
                        child: Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'description');
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RaisedButton(
                        color: Colors.blueAccent,
                        child: Text(
                          'Game Developer',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'game developer');
                        },
                      ),
                    ],
                  ),
                ),
                actions: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
