import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe_x_and_o_game/customWidgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(5, 40, 5, 0),
          child: Stack(
            children: [
              backgroundDesignInHomeScreen(),
              AlertDialog(
                backgroundColor: Colors.black87,
                content: Container(
                  height: 250,
                  width: 300,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      singleButtonInHomeScreen(
                          pageName: 'Play', context: context),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // singleButtonInHomeScreen(
                      //     pageName: 'Play With Computer', context: context),
                      SizedBox(
                        height: 20,
                      ),
                      singleButtonInHomeScreen(
                          pageName: 'Description', context: context),
                      SizedBox(
                        height: 20,
                      ),
                      singleButtonInHomeScreen(
                          pageName: 'Game Developer', context: context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
