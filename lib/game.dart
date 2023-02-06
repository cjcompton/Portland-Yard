import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const GameApp());
}

class GameApp extends StatelessWidget {
  const GameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GamepageWidget(),
      ),
    );
  }
}

class GamepageWidget extends StatefulWidget {
  const GamepageWidget({super.key});

  @override
  State<GamepageWidget> createState() => _GamepageWidget();
}

class _GamepageWidget extends State<GamepageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 55),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home_background.jpeg"),
          ),
        ),
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            // ignore: prefer_const_constructors
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
            /*
            home: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
            */
          )
        ],
      ),
    );
  }
}
