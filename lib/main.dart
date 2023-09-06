import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    GameApplication(),
  );
}

class GameApplication extends StatefulWidget {
  const GameApplication({super.key});

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 1;
  int bottom = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazri'),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Rock   Paper   scisserce',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/$top.png'),
                TextButton(
                  onPressed: () {
                    setState(
                      () {
                        top = Random().nextInt(3) + 1;
                        bottom = Random().nextInt(3) + 1;
                      },
                    );
                  },
                  child: Text(
                    'Start Game',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Image.asset('images/$bottom.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
