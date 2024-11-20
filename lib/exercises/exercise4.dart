import 'package:flutter/material.dart';
import 'dart:math'; // Importing for random number generation

class Exercise4 extends StatefulWidget { // Changed to StatefulWidget
  @override
  _Exercise4State createState() => _Exercise4State();
}

class _Exercise4State extends State<Exercise4> {
  int ballNumber = 1; // Variable to hold the current ball number

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1; // Generate a random number between 1 and 5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magical 8 Ball'),
      ),
      body: GestureDetector( // Thay đổi ở đây
        onTap: changeBall, // Gọi hàm changeBall khi chạm vào màn hình
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/ball$ballNumber.png'), // Display the current ball image
              const SizedBox(height: 20),
              const Text('Tap anywhere to ask the 8 Ball!'), // Thêm thông báo cho người dùng
            ],
          ),
        ),
      ),
    );
  }
}
