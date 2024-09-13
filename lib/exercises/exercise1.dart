import 'package:flutter/material.dart';

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('I Am Rich'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    );
  }
}

// The main function remains in your main.dart file
