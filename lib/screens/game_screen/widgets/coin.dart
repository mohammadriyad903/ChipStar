import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/game_controller.dart';

class Coin extends StatelessWidget {
  final GameController gameController = Get.find<GameController>();

  final Color coinColor;

  Coin({
    required this.coinColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: coinColor,
      ),
    );
  }
}
