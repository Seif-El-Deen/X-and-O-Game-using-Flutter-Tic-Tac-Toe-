import 'package:flutter/material.dart';

class GameDeveloper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Developer',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 20, 10, 0),
          child: Column(
            children: [
              Text(
                '''
I'm Seif El-Deen Mostafa a student in the faculty of computer science Ain-Shames University.
for more information about me you can contact me.

               ''',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    '  Email: ',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('seifeldeenmostafa000@gmail.com',
                      style: TextStyle(fontSize: 18, color: Colors.white))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
