import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart'; // Updated import

class Exercise5 extends StatelessWidget {
  final AudioPlayer player = AudioPlayer(); // Khởi tạo AudioPlayer

  void playSound(int soundNumber) async {
    await player.play(AssetSource('note$soundNumber.wav')); // Sử dụng AssetSource để phát âm thanh
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton( // Changed from FlatButton to TextButton
        style: TextButton.styleFrom(
          backgroundColor: color, // Set background color
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(), // Use an empty Container as a child widget
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Xylophone App'), // Updated title
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
