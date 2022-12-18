import 'package:flutter/material.dart';
import 'package:tictactoe/gamescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Aquire"),
      home: const GameScreen(),
    );
  }
}
