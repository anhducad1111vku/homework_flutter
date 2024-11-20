import 'package:flutter/material.dart';
import 'package:homework_flutter/screens/welcome_screen.dart';
import 'package:homework_flutter/screens/login_screen.dart';
import 'package:homework_flutter/screens/registration_screen.dart';
import 'package:homework_flutter/screens/chat_screen.dart';

class Exercise6 extends StatelessWidget {
  static const String id = 'exercise6'; // Add a static id for the route

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}