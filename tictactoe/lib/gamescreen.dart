import 'package:flutter/material.dart';
import 'package:tictactoe/colors.dart';
import 'package:tictactoe/gameboard.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  bool gameOver = false;
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
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    ("It is $choice turn!").toUpperCase(),
                    style: const TextStyle(
                      color: MainColors.accentColor,
                      fontSize: 30,
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
                        (index) {
                          return InkWell(
                            onTap: gameOver
                                ? null
                                : () {
                                    if (game.board![index] == "") {
                                      setState(() {
                                        game.board![index] = choice;
                                        if (choice == "X") {
                                          choice = "O";
                                        } else {
                                          choice = "X";
                                        }
                                      });
                                    }
                                  },
                            child: Container(
                              width: Game.blockSize,
                              height: Game.blockSize,
                              decoration: BoxDecoration(
                                color: MainColors.secondaryColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  game.board![index],
                                  style: TextStyle(
                                    color: game.board![index] == "X"
                                        ? MainColors.accentColor2
                                        : MainColors.accentColor1,
                                    fontFamily: "Aquire",
                                    fontSize: 55,
                                    fontWeight: FontWeight.w400,
                                  ),
                                );
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),);
  }
}
