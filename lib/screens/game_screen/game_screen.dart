import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/game_controller.dart';
import 'widgets/game_body.dart';

class GameScreen extends StatelessWidget {
  final GameController gameController = Get.find<GameController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.brown[700],
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBar(
              // backgroundColor: Color.fromARGB(255, 76, 72, 72),
              backgroundColor: Colors.black,
              centerTitle: true,
              leading: Image.asset(
                "assets/images/splash.jpg",
                fit: BoxFit.cover,
              ),
              // backgroundColor: Colors.,
              title: Text("ChipStar"),
            ),
          ),
          body: GameBody()),
    );
  }
}
