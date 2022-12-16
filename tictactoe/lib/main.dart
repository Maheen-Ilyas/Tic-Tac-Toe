import 'package:flutter/material.dart';
import 'package:tictactoe/colors.dart';
import 'package:tictactoe/gameboard.dart';

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
      home: const GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  String lastValue = "X";
  Game game = Game();

  @override
  void initState() {
    super.initState();
    game.board = Game.initGameBoard();
    print(game.board);
  }

  @override
  Widget build(BuildContext context) {
    double boardWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: MainColors.backgroundColor,
        body: SafeArea(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Tic Tac Toe",
                    style: TextStyle(
                      fontFamily: "Aquire",
                      color: MainColors.secondaryColor,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    ("It is $lastValue turn!").toUpperCase(),
                    style: const TextStyle(
                      color: MainColors.accentColor,
                      fontSize: 20,
                      fontFamily: "Aquire",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: boardWidth,
                    height: boardWidth,
                    child: GridView.count(
                      crossAxisCount: Game.boardCount ~/ 3,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      children: List.generate(
                          Game.boardCount,
                          (index) => Container(
                                width: Game.blockSize,
                                height: Game.blockSize,
                                decoration: BoxDecoration(
                                    color: MainColors.secondaryColor,
                                    borderRadius: BorderRadius.circular(5)),
                              )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
