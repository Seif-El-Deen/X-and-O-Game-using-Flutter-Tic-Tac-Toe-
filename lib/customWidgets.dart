import 'package:flutter/material.dart';
import 'package:learning_flutter_project/place.dart';

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

Widget rowDesign() {
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
    ],
  );
}
