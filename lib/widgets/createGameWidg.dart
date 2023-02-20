import 'package:flutter/material.dart';
import 'package:portland_yard/routes/routes.dart' as route;

class CreateGamePage extends StatelessWidget {
  const CreateGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        textStyle: const TextStyle(
            fontFamily: 'Oswald', fontSize: 24.0, color: Colors.white));

    //var _yesNoOptions = ["yes", "no"];
    //var _currentSelectedValue = 'Randomly Assigned Mr. X?';

    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(vertical: 75, horizontal: 30),
            decoration:
                const BoxDecoration(color: Color.fromRGBO(118, 156, 145, 100)),
            child: Column(children: <Widget>[
              const Text('Create Game',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Oswald-SemiBold",
                      fontSize: 35,
                      color: Colors.white)),
              ElevatedButton(
                  style: style,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go Back')),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 50.0)),
              Container(
                color: Colors.black.withOpacity(0.5),
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                child: Column(children: const <Widget>[
                  /*SizedBox(
                      height: 50,
                      width: 50,
                      child: */
                  TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Number of Players',
                  )) /*)*/,
                  SizedBox(height: 15),
                  Divider(height: 0, thickness: 1, color: Colors.white),
                  SizedBox(height: 15),
                  TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Number of Bots',
                  )),
                  SizedBox(height: 15),
                  Divider(height: 0, thickness: 1, color: Colors.white),
                  SizedBox(height: 15),
                ]),
              )
            ])));
  }
}
