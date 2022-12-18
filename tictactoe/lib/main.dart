import 'package:flutter/material.dart';
import 'package:tictactoe/gamemainscreen.dart';
import 'package:tictactoe/gamescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/gamescreen/' :(context) => const GameScreen(),
        '/openingscreen/': (context) => const MainScreen(),
      },
      theme: ThemeData(fontFamily: "Aquire"),
      home: const MainScreen(),
    );
  }
}
