class Place {
  static List<bool> playerX = [
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
  static List<bool> playerO = [
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
  static List<bool> isEmptyPosition = [
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
  static bool gameBeginning = true;
  static int counter = 0;
  static bool displayAlertDialog = false;
  static bool playerOWins = false;
  static bool playerXWins = false;
  static bool playerOStarts = false;

  static changeState(int placeNumber) {
    if (playerOStarts) {
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

  static checkingTheWinner() {
    // if playerO wins vertically
    // O row 1
    if (playerO[0] && playerO[1] && playerO[2]) {
      return 'O1';
    }
    // O row 2
    else if (playerO[3] && playerO[4] && playerO[5]) {
      return 'O2';
    }
    // O row 3
    else if (playerO[6] && playerO[7] && playerO[8]) {
      return 'O3';
    }
    // O column 1
    else if (playerO[0] && playerO[3] && playerO[6]) {
      return 'O4';
    }
    // O column 2
    else if (playerO[1] && playerO[4] && playerO[7]) {
      return 'O5';
    }
    // O column 3
    else if (playerO[2] && playerO[5] && playerO[8]) {
      return 'O6';
    }
    // O diagonal 1
    else if (playerO[0] && playerO[4] && playerO[8]) {
      return 'O7';
    }
    // O diagonal 2
    else if (playerO[2] && playerO[4] && playerO[6]) {
      return 'O8';
    }
    // X row 1
    else if (playerX[0] && playerX[1] && playerX[2]) {
      return 'X1';
    }
    // X row 2
    else if (playerX[3] && playerX[4] && playerX[5]) {
      return 'X2';
    }
    // X row 3
    else if (playerX[6] && playerX[7] && playerX[8]) {
      return 'X3';
    }
    // X column 1
    else if (playerX[0] && playerX[3] && playerX[6]) {
      return 'X4';
    }
    // X column 2
    else if (playerX[1] && playerX[4] && playerX[7]) {
      return 'X5';
    }
    // X column 3
    else if (playerX[2] && playerX[5] && playerX[8]) {
      return 'X6';
    }
    // X diagonal 1
    else if (playerX[0] && playerX[4] && playerX[8]) {
      return 'X7';
    }
    // X diagonal 2
    else if (playerX[2] && playerX[4] && playerX[6]) {
      return 'X8';
    }
    // if game ends without any win
    else if (counter == 9) {
      print('game is over');
      return 0;
    }
    return -1;
  }

  static restart() {
    playerX = [false, false, false, false, false, false, false, false, false];
    playerO = [false, false, false, false, false, false, false, false, false];
    isEmptyPosition = [true, true, true, true, true, true, true, true, true];
    counter = 0;
    displayAlertDialog = false;
    playerOWins = false;
    playerXWins = false;
    gameBeginning = true;
  }

  static checkDialogDisplay() {
    dynamic val = checkingTheWinner();

    if (['O1', 'O2', 'O3', 'O4', 'O5', 'O6', 'O7', 'O8'].contains(val)) {
      playerOWins = true;
      displayAlertDialog = true;
    } else if (['X1', 'X2', 'X3', 'X4', 'X5', 'X6', 'X7', 'X8'].contains(val)) {
      playerXWins = true;
      displayAlertDialog = true;
    } else if (counter == 9) {
      displayAlertDialog = true;
    }
  }
}
