import 'package:flutter/material.dart';
import 'package:portland_yard/routes/routes.dart' as route;

/* 
Rename this widget and then put it in the widget file
Also make it the default open widget, and link the other widgets through
The onlcicks in this widget
*/
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        // ignore: prefer_const_constructors

        backgroundColor: Colors.transparent,
        textStyle: const TextStyle(
            fontFamily: 'Oswald', fontSize: 24.0, color: Colors.white));

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(vertical: 180, horizontal: 55),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home_background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: <Widget>[
          const Text('Portland Yard',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Oswald-SemiBold",
                  fontSize: 35,
                  color: Colors.white)),
          Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0)),
          Container(
              color: Colors.black.withOpacity(0.5),
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 40.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // ignore: prefer_const_constructors

                    ElevatedButton(
                      style: style,
                      onPressed: () => {
                        Navigator.pushNamed(
                          context,
                          route.createGamePage,
                        ),
                      },
                      child: const Text('Create Game',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const Divider(
                      height: 0,
                      thickness: 1,
                      color: Colors.white,
                    ),
                    // ignore: prefer_const_constructors

                    ElevatedButton(
                      style: style,
                      onPressed: () => {
                        Navigator.pushNamed(
                          context,
                          route.joinGamePage,
                        ),
                      },
                      child: const Text('Join Game',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const Divider(
                      height: 0,
                      thickness: 1,
                      color: Colors.white,
                    ),

                    ElevatedButton(
                      style: style,
                      onPressed: () => {
                        Navigator.pushNamed(
                          context,
                          route.gamePage,
                        ),
                      },
                      child: const Text('Game Page',
                          style: TextStyle(color: Colors.white)),
                    ),
                    // ignore: prefer_const_constructors

                    const Divider(
                      height: 0,
                      thickness: 1,
                      color: Colors.white,
                    ),

                    /*ElevatedButton(
                      style: style,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingsPage()),
                        );
                      },
                      child: const Text('Settings',
                          style: TextStyle(color: Colors.white)),
                    ),*/
                  ]))
        ]),
      ),
    );
  }
}
