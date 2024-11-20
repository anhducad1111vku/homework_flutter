import 'package:flutter/material.dart';
import 'exercises/exercise1.dart';
import 'exercises/exercise2.dart';
import 'exercises/exercise3.dart';
import 'exercises/exercise4.dart';
import 'exercises/exercise5.dart';
import 'exercises/exercise6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Homework',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeworkList(),
    );
  }
}

class HomeworkList extends StatelessWidget {
  const HomeworkList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homework Exercises'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Exercise ${index + 1}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => _getExercise(index + 1)),
              );
            },
          );
        },
      ),
    );
  }

  Widget _getExercise(int number) {
    switch (number) {
      case 1:
        return Exercise1();
      case 2:
        return Exercise2();
      case 3:
        return Exercise3();
      case 4:
        return Exercise4();
      case 5:
        return Exercise5();
      case 5:
        return Exercise6();
      default:
        return const Scaffold(body: Center(child: Text('Exercise not found')));
    }
  }
}