import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/game_controller.dart';
import 'board.dart';
import 'coin.dart';

enum cellMode {
  EMPTY,
  BLUE,
  RED,
}

class Cell extends StatelessWidget {
  final GameController gameController = Get.find<GameController>();
  Board board = Board();

  final currentCellMode;

  Cell({
    required this.currentCellMode,
  });

  Coin _buildCoin() {
    if (this.currentCellMode == cellMode.BLUE) {
      return Coin(
        coinColor: Color.fromARGB(255, 51, 132, 199),
        // coinColor: Colors.yellow,
      );
    } else if (this.currentCellMode == cellMode.RED) {
      return Coin(
        coinColor: Color.fromARGB(255, 199, 72, 63),
      );
    } else {
      return Coin(
        coinColor: Color.fromARGB(255, 93, 64, 55),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 50,
          // color: Color(0xFFB66F20),
          child: Image.network(
              "https://cdn.pixabay.com/photo/2015/01/07/16/37/wood-591631__340.jpg"),
        ),
        Positioned.fill(
            child: Align(
          alignment: Alignment.topCenter,
          child: _buildCoin(),
        ))
      ],
    );
  }
}
