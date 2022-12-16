class Player {
  static const x = "X";
  static const o = "O";
  static const empty = "";
}

class Game {
  static const boardCount = 9;
  static const blockSize = 100.0;
  List<String>? board;
  static List<String>? initGameBoard() =>
      List.generate(boardCount, (index) => Player.empty);
}
