import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'game_screen/game_screen.dart';

class Play extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[400],
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/splash.jpg',
                  width: 100,
                ),
                IconButton(
                    onPressed: () {
                      Get.to(GameScreen());
                    },
                    icon: Icon(
                      Icons.play_arrow,
                      size: 50,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
