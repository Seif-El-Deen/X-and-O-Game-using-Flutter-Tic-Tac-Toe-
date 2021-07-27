import 'package:flutter/material.dart';
import 'place.dart';
import 'customWidgets.dart';

class PlayWithComputer extends StatefulWidget {
  @override
  _PlayWithComputerState createState() => _PlayWithComputerState();
}

class _PlayWithComputerState extends State<PlayWithComputer> {
  int counter = 0;
  bool playerStarts = false;
  bool playerIsO = false;
  bool gameBeginningFirstDialog = true;
  bool gameBeginningSecondDialog = false;

  List<bool> playerX = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  List<bool> playerO = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  List<bool> isEmptyPosition = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leading: TextButton(
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Place.restart();
                });
              },
              icon: Icon(Icons.restart_alt_rounded))
        ],
        title: Text(
          'X & O (Computer)',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(width: 3, color: Colors.black),
                  columnWidths: {
                    0: FractionColumnWidth(.2),
                    1: FractionColumnWidth(.2),
                    2: FractionColumnWidth(.2)
                  },
                  children: [
                    TableRow(
                      children: [
                        singleTextButton(
                            winningLine: ['O1', 'O4', 'O7', 'X1', 'X4', 'X7'],
                            buttonNumber: 0),
                        singleTextButton(
                            winningLine: ['O1', 'O5', 'X1', 'X5'],
                            buttonNumber: 1),
                        singleTextButton(
                            winningLine: ['O1', 'O6', 'O8', 'X1', 'X6', 'X8'],
                            buttonNumber: 2),
                      ],
                    ),
                    TableRow(
                      children: [
                        singleTextButton(
                            winningLine: ['O2', 'O4', 'X2', 'X4'],
                            buttonNumber: 3),
                        singleTextButton(winningLine: [
                          'O2',
                          'O5',
                          'O7',
                          'O8',
                          'X2',
                          'X5',
                          'X7',
                          'X8'
                        ], buttonNumber: 4),
                        singleTextButton(
                            winningLine: ['O2', 'O6', 'X2', 'X6'],
                            buttonNumber: 5),
                      ],
                    ),
                    TableRow(
                      children: [
                        singleTextButton(
                            winningLine: ['O3', 'O4', 'O8', 'X3', 'X4', 'X8'],
                            buttonNumber: 6),
                        singleTextButton(
                            winningLine: ['O3', 'O5', 'X3', 'X5'],
                            buttonNumber: 7),
                        singleTextButton(
                            winningLine: ['O3', 'O6', 'O7', 'X3', 'X6', 'X7'],
                            buttonNumber: 8)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
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
                            ElevatedButton(
                              child: Text('Play again'),
                              onPressed: () {
                                setState(
                                  () {
                                    Place.restart();
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              : SizedBox(width: 0),
          gameBeginningFirstDialog
              ? Positioned(
                  top: 90,
                  right: 0,
                  left: 0,
                  child: AlertDialog(
                    title: Text(
                        'Would you like to the start the game or make the computer start the game?'),
                    content: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              child: Text('Player'),
                              onPressed: () {
                                setState(() {
                                  playerStarts = true;
                                  gameBeginningFirstDialog = false;
                                  gameBeginningSecondDialog = true;
                                });
                              },
                            ),
                            ElevatedButton(
                              child: Text('Computer'),
                              onPressed: () {
                                setState(
                                  () {
                                    playerStarts = false;
                                    gameBeginningFirstDialog = false;
                                    gameBeginningSecondDialog = true;
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              : SizedBox(
                  width: 0,
                ),
          gameBeginningSecondDialog
              ? Positioned(
                  top: 90,
                  right: 0,
                  left: 0,
                  child: AlertDialog(
                    title: Text('Which Player you would like to be?'),
                    content: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              child: Text('Player X'),
                              onPressed: () {
                                setState(
                                  () {
                                    playerIsO = false;
                                    gameBeginningSecondDialog = false;
                                    computerLogic();
                                  },
                                );
                              },
                            ),
                            ElevatedButton(
                              child: Text('Player O'),
                              onPressed: () {
                                setState(
                                  () {
                                    playerIsO = true;
                                    gameBeginningSecondDialog = false;
                                    computerLogic();
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              : SizedBox(
                  width: 0,
                ),
        ],
      ),
    );
  }

  void computerLogic() {
    if (!playerStarts) {
      if (counter == 0)
        setState(() {
          singleTextButton(
              winningLine: ['O1', 'O4', 'O7', 'X1', 'X4', 'X7'],
              buttonNumber: 0);
        });
    }
  }

  changeState(int placeNumber) {
    if (playerStarts) {
      if (isEmptyPosition[placeNumber]) {
        if (counter % 2 == 0) {
          playerO[placeNumber] = true;
          isEmptyPosition[placeNumber] = false;
        } else if (counter % 2 == 1) {
          playerX[placeNumber] = true;
          isEmptyPosition[placeNumber] = false;
        }
        counter++;
      }
    } else {
      if (isEmptyPosition[placeNumber]) {
        if (counter % 2 == 0) {
          playerX[placeNumber] = true;
          isEmptyPosition[placeNumber] = false;
        } else if (counter % 2 == 1) {
          playerO[placeNumber] = true;
          isEmptyPosition[placeNumber] = false;
        }
        counter++;
      }
    }
  }

  // The reason that this custom widget is found in this class and not in the customWidgets file is to have the ability to use the
  // setState instead of making to many updates to the project and use the blocProvider
  Widget singleTextButton(
          {required List<String> winningLine, required int buttonNumber}) =>
      TextButton(
        child: textWidget(buttonNumber,
            letterColor: winningLine.contains(Place.checkingTheWinner())
                ? Colors.green
                : Colors.black),
        onPressed: () {
          // Place.changeState(buttonNumber);
          // Place.checkingTheWinner();
          // Place.checkDialogDisplay();
          computerLogic();
          setState(() {});
        },
      );
}
