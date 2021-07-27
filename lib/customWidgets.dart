import 'package:flutter/material.dart';
import 'package:tic_tac_toe_x_and_o_game/place.dart';

Widget textWidget(int placeNumber, {letterColor: Colors.black}) {
  return Text(
    Place.isEmptyPosition[placeNumber]
        ? ' '
        : Place.playerO[placeNumber]
            ? 'O'
            : 'X',
    style: TextStyle(
      fontSize: 120,
      color: letterColor,
    ),
    textAlign: TextAlign.center,
  );
}

Widget singleButtonInHomeScreen(
        {required String pageName, required BuildContext context}) =>
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blueAccent,
      ),
      child: Text(
        pageName,
        style: TextStyle(
          fontSize: 28,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
      onPressed: () {
        Navigator.pushNamed(context, pageName);
      },
    );

Widget SingleRowDesignInHomeScreenBackground() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'X',
        style: TextStyle(fontSize: 70, color: Colors.green),
      ),
      Text(
        'O',
        style: TextStyle(fontSize: 70),
      ),
      Text(
        'X',
        style: TextStyle(fontSize: 70),
      ),
      Text(
        'O',
        style: TextStyle(fontSize: 70, color: Colors.green),
      ),
      Text(
        'X',
        style: TextStyle(fontSize: 70, color: Colors.green),
      ),
      Text(
        'O',
        style: TextStyle(fontSize: 70),
      ),
      Text(
        'X',
        style: TextStyle(fontSize: 70, color: Colors.green),
      ),
    ],
  );
}

Widget backgroundDesignInHomeScreen() => SingleChildScrollView(
      child: Column(
        children: [
          SingleRowDesignInHomeScreenBackground(),
          SingleRowDesignInHomeScreenBackground(),
          SingleRowDesignInHomeScreenBackground(),
          SingleRowDesignInHomeScreenBackground(),
          SingleRowDesignInHomeScreenBackground(),
          SingleRowDesignInHomeScreenBackground(),
          SingleRowDesignInHomeScreenBackground(),
          SingleRowDesignInHomeScreenBackground(),
          SingleRowDesignInHomeScreenBackground(),
        ],
      ),
    );
