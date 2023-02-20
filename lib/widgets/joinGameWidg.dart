import 'package:flutter/material.dart';
import 'package:portland_yard/routes/routes.dart' as route;

class JoinGamePage extends StatelessWidget {
  const JoinGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        textStyle: const TextStyle(
            fontFamily: 'Oswald', fontSize: 24.0, color: Colors.white));
    return Scaffold(
        body: Container(
            color: const Color.fromRGBO(196, 142, 125, 100).withOpacity(0.5),
            alignment: Alignment.center,
            //padding: EdgeInsets.all((MediaQuery.of(context).size.width) / 4),
            padding: const EdgeInsets.symmetric(vertical: 75, horizontal: 30),
            child: Column(children: <Widget>[
              const Text('Join Game',
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
                      vertical: 5.0, horizontal: 30.0)),
              Container(
                color: Colors.black.withOpacity(0.5),
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                child: Column(children: const <Widget>[
                  /*SizedBox(
                      height: 50,
                      width: 50,
                      child: */
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                          //border: InputBorder.none,
                          labelText: 'Your Name',
                          hintText: 'Enter Your Name'),
                    ),
                  ),
                  SizedBox(height: 15),
                  /*ElevatedButton(
                    onPressed: null,
                    child: Text('Disabled'),
                  ),*/
                ]),
              )
            ])));

    /*
    return Scaffold(
      appBar: AppBar(
        title: const Text("Join Game"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Join Game"),
        ),
      ),
    );
    */
  }
}
