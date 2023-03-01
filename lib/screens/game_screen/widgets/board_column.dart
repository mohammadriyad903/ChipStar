import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ssa/screens/game_screen/widgets/coin.dart';

import '../../../controllers/game_controller.dart';
import 'cell.dart';

class BoardColumn extends StatelessWidget {
  final GameController gameController = Get.find<GameController>();
  final List<int>? columnOfPlayerChips;
  final int? columnNumber;

  BoardColumn({
     this.columnNumber,
      this.columnOfPlayerChips,
  }
  );



  List<Cell> _buildBoardColumn() {
    return columnOfPlayerChips!.reversed
        .map((number) => number == 1
            ? Cell(
                currentCellMode: cellMode.BLUE,
              )
            : number == 2
                ? Cell(
                    currentCellMode: cellMode.RED,
                  )
                : Cell(
                    currentCellMode: cellMode.EMPTY,
                  ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        gameController.playColumn(columnNumber!);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: _buildBoardColumn(),
      ),
    );
  }
}
