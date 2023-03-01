import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/game_controller.dart';
import 'board_column.dart';

class Board extends StatefulWidget {
  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  final GameController gameController = Get.find<GameController>();
  List<BoardColumn> _buildBoard() {
    int currentColumnNumber = 0;

    return gameController.board
        .map((boardColumn) => BoardColumn(
              columnOfPlayerChips: boardColumn,
              columnNumber: currentColumnNumber++,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Card(
        //       child: Column(
        //         children: [
        //           Text("Player blue"),
        //           Text(""),
        //         ],
        //       ),
        //     ),
        //     Card(
        //       child: Column(
        //         children: [
        //           Text("Player blue"),
        //           Text(""),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/01/07/16/37/wood-591631__340.jpg")),
            // color: Color(0xFFB66F20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GetBuilder<GameController>(
                    builder: (GetxController gameController) => Row(
                      children: _buildBoard(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        ElevatedButton(
            onPressed: () => gameController.resetGame(),
            child: const Text("Restart Game")),
      ],
    );
  }
}
  