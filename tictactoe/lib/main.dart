import 'package:flutter/material.dart';
import 'package:tictactoe/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Aquire"),
      home: const Game(),
    );
  }
}

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MainColors.backgroundColor,
      body: SafeArea(
          child: Center(
        child: Text(
          "Tic Tac Toe",
          style: TextStyle(
              fontFamily: "Aquire",
              color: MainColors.secondaryColor,
              fontSize: 30),
        ),
      )),
    );
  }
}
