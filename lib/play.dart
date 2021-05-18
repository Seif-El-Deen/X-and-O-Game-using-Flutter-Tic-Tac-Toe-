import 'package:flutter/material.dart';
import 'place.dart';
import 'customWidgets.dart';

class Play extends StatefulWidget {
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blueGrey,
            appBar: AppBar(
              leading: FlatButton(
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(
                'X & O',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              centerTitle: true,
            ),
            body: Stack(children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Table(
                            border:
                                TableBorder.all(width: 3, color: Colors.black),
                            columnWidths: {
                              0: FractionColumnWidth(.2),
                              1: FractionColumnWidth(.2),
                              2: FractionColumnWidth(.2)
                            },
                            children: [
                              TableRow(children: [
                                FlatButton(
                                  child: textWidget(0,
                                      letterColor: [
                                        'O1',
                                        'O4',
                                        'O7',
                                        'X1',
                                        'X4',
                                        'X7'
                                      ].contains(Place.chekingTheWinner())
                                          ? Colors.green
                                          : Colors.black),
                                  onPressed: () {
                                    setState(() {
                                      Place.changeState(0);
                                      dynamic val = Place.chekingTheWinner();
                                      if ([
                                        'O1',
                                        'O2',
                                        'O3',
                                        'O4',
                                        'O5',
                                        'O6',
                                        'O7',
                                        'O8'
                                      ].contains(val)) {
                                        Place.playerOWins = true;
                                        Place.displayAlertDialog = true;
                                      }
                                    });
                                  },
                                ),
                                FlatButton(
                                  child: textWidget(1,
                                      letterColor: [
                                        'O1',
                                        'O5',
                                        'X1',
                                        'X5'
                                      ].contains(Place.chekingTheWinner())
                                          ? Colors.green
                                          : Colors.black),
                                  onPressed: () {
                                    setState(() {
                                      Place.changeState(1);
                                      Place.checkDialogDisplay();
                                    });
                                  },
                                ),
                                FlatButton(
                                  child: textWidget(2,
                                      letterColor: [
                                        'O1',
                                        'O6',
                                        'O8',
                                        'X1',
                                        'X6',
                                        'X8'
                                      ].contains(Place.chekingTheWinner())
                                          ? Colors.green
                                          : Colors.black),
                                  onPressed: () {
                                    setState(() {
                                      Place.changeState(2);
                                      Place.checkDialogDisplay();
                                    });
                                  },
                                ),
                              ]),
                              TableRow(children: [
                                FlatButton(
                                  child: textWidget(3,
                                      letterColor: [
                                        'O2',
                                        'O4',
                                        'X2',
                                        'X4'
                                      ].contains(Place.chekingTheWinner())
                                          ? Colors.green
                                          : Colors.black),
                                  onPressed: () {
                                    setState(() {
                                      Place.changeState(3);
                                      Place.checkDialogDisplay();
                                    });
                                  },
                                ),
                                FlatButton(
                                  child: textWidget(4,
                                      letterColor: [
                                        'O2',
                                        'O5',
                                        'O7',
                                        'O8',
                                        'X2',
                                        'X5',
                                        'X7',
                                        'X8'
                                      ].contains(Place.chekingTheWinner())
                                          ? Colors.green
                                          : Colors.black),
                                  onPressed: () {
                                    setState(() {
                                      Place.changeState(4);
                                      Place.checkDialogDisplay();
                                    });
                                  },
                                ),
                                FlatButton(
                                  child: textWidget(5,
                                      letterColor: [
                                        'O2',
                                        'O6',
                                        'X2',
                                        'X6'
                                      ].contains(Place.chekingTheWinner())
                                          ? Colors.green
                                          : Colors.black),
                                  onPressed: () {
                                    setState(() {
                                      Place.changeState(5);
                                      Place.checkDialogDisplay();
                                    });
                                  },
                                ),
                              ]),
                              TableRow(children: [
                                FlatButton(
                                  child: textWidget(6,
                                      letterColor: [
                                        'O3',
                                        'O4',
                                        'O8',
                                        'X3',
                                        'X4',
                                        'X8'
                                      ].contains(Place.chekingTheWinner())
                                          ? Colors.green
                                          : Colors.black),
                                  onPressed: () {
                                    setState(() {
                                      Place.changeState(6);
                                      Place.checkDialogDisplay();
                                    });
                                  },
                                ),
                                FlatButton(
                                  child: textWidget(7,
                                      letterColor: [
                                        'O3',
                                        'O5',
                                        'X3',
                                        'X5'
                                      ].contains(Place.chekingTheWinner())
                                          ? Colors.green
                                          : Colors.black),
                                  onPressed: () {
                                    setState(() {
                                      Place.changeState(7);
                                      Place.checkDialogDisplay();
                                    });
                                  },
                                ),
                                FlatButton(
                                  child: textWidget(8,
                                      letterColor: [
                                        'O3',
                                        'O6',
                                        'O7',
                                        'X3',
                                        'X6',
                                        'X7'
                                      ].contains(Place.chekingTheWinner())
                                          ? Colors.green
                                          : Colors.black),
                                  onPressed: () {
                                    setState(() {
                                      Place.changeState(8);
                                      Place.checkDialogDisplay();
                                    });
                                  },
                                ),
                              ]),
                            ]))
                  ]),
              Place.displayAlertDialog
                  ? Positioned(
                      top: 150,
                      right: 0,
                      left: 0,
                      child: AlertDialog(
                        title: Text('Winner'),
                        content: Column(
                          children: [
                            Row(
                              children: [
                                Place.playerXWins
                                    ? Text('Player X is the Winner')
                                    : Place.playerOWins
                                        ? Text('Player O is the Winner')
                                        : Text('Game is over equally')
                              ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RaisedButton(
                                    child: Text('Play again'),
                                    onPressed: () {
                                      setState(() {
                                        Place.displayAlertDialog =
                                            false; //Recall the function again
                                        Place.gameBeginning = true;
                                        Place.restart();
                                      });
                                    },
                                  ),
                                ]),
                          ],
                        ),
                        actions: [],
                      ),
                    )
                  : SizedBox(width: 0),
              Place.gameBeginning
                  ? Positioned(
                      top: 90,
                      right: 0,
                      left: 0,
                      child: AlertDialog(
                        title: Text('Which player will start the game?'),
                        content: Column(
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RaisedButton(
                                    child: Text('Player X'),
                                    onPressed: () {
                                      setState(() {
                                        Place.playerOStarts = false;
                                        Place.gameBeginning =
                                            false; //Recall the function again
                                      });
                                    },
                                  ),
                                  RaisedButton(
                                    child: Text('Player O'),
                                    onPressed: () {
                                      setState(() {
                                        Place.playerOStarts = true;
                                        Place.gameBeginning =
                                            false; //Recall the function again
                                      });
                                    },
                                  ),
                                ]),
                          ],
                        ),
                        actions: [],
                      ),
                    )
                  : SizedBox(
                      width: 0,
                    ),
            ])));
  }
}
