import 'dart:math'; // Added import for Random
import 'package:flutter/material.dart';

class Exercise3 extends StatefulWidget { // Changed to StatefulWidget
  @override
  _Exercise3State createState() => _Exercise3State();
}

class _Exercise3State extends State<Exercise3> { // Updated state class name
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise 3: Dicee'), // Updated title
      ),
      body: Center(
        child: Container( // Thêm Container để thay đổi nền
          color: const Color.fromARGB(255, 55, 55, 55), // Đặt màu nền thành đen
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton( // Thay đổi FlatButton thành TextButton
                  child: Image.asset(
                    'images/dice$leftDiceNumber.png',
                  ),
                  onPressed: () {
                    changeDiceFace();
                  },
                ),
              ),
              Expanded(
                child: TextButton( // Thay đổi FlatButton thành TextButton
                  child: Image.asset(
                    'images/dice$rightDiceNumber.png',
                  ),
                  onPressed: () {
                    changeDiceFace();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
